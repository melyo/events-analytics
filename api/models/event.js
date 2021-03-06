var { Model } = require('../../lib/model')
var db = require('../../lib/database')

class Event extends Model {
  constructor() {
    let table = 'events'

    let fillable = [
      'name',
      'created_at'
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

  count(event, startDate, endDate) {
    return new Promise((resolve, reject) => {
      db.execute(`
          SELECT
            COUNT(DATE(created_at)) AS count,
            DATE(created_at) AS date
          FROM
            ${this.table}
          WHERE
            created_at BETWEEN "${startDate}" AND "${endDate}"
            AND name = "${event}"
          GROUP BY
            date
        `)
        .then((data) => { resolve(data) })
        .catch((error) => { reject(error) })
    })
  }
}

module.exports = {
  Event: Event
}
