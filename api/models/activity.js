var { Model } = require('../../lib/model')

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
}

module.exports = {
  Activity: Activity
}
