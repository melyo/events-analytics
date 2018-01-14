var { Model } = require('../../lib/model')

class Event extends Model {
  constructor() {
    let table = 'events'

    let fillable = [
      'name',
      'created_at'
    ]

    super(table, fillable)
  }
}

module.exports = {
  Event: Event
}
