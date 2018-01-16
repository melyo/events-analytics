var { Model } = require('../../lib/model')
var db = require('../../lib/database')

class Activity extends Model {
  constructor() {
    let table = 'activities'

    let fillable = [
      'name',
      'state',
      'started_at',
      'ended_at'
    ]

    super(table, fillable)
  }

  list() {
    return new Promise((resolve, reject) => {
      db.execute(`SELECT DISTINCT name FROM ${this.table}`)
        .then((data) => { resolve(data) })
        .catch((error) => { reject(error) })
    })
  }

  dayActivity(activity, date, now) {
    return new Promise((resolve, reject) => {
      db.execute(`
          SELECT
            SUM(
              TIMESTAMPDIFF(
                MINUTE,
                IF(
                  started_at < "${date} 00:00:00",
                  "${date} 00:00:00",
                  started_at
                ),
                IF(
                  ended_at IS NULL,
                  IF("${date} 00:00:00" < "${now}", "${now}", "${date} 23:59:59"),
                  IF(ended_at > "${date} 23:59:59", "${date} 23:59:59", ended_at)
                )
              )
            )
            AS "minutes"
          FROM
            ${this.table}
          WHERE
            started_at <= "${date} 23:59:59" AND (ended_at >= "${date} 00:00:00" OR ended_at IS NULL)
            AND name = "${activity}"
        `)
        .then((data) => { resolve(data) })
        .catch((error) => { reject(error) })
    })
  }
}

module.exports = {
  Activity: Activity
}
