var moment = require('moment')
var output = require('../lib/output')
var { Event } = require('../api/models/event')
var { Activity } = require('../api/models/activity')
var { validateAll } = require('indicative')

module.exports = {
  trackEvent(input) {
    return new Promise((resolve, reject) => {
      // define input validation rules
      let rules = { name: 'required' }

      // validate input
      validateAll(input, rules)
        .then(() => {
          // instantiate Event model
          let event = new Event

          // timestamp
          input.created_at = moment().format('YYYY-MM-DD HH:mm:ss')

          // create event
          event.create(input)
            .then(data => { resolve(output.success(null, 'Event created successfully', 200)) })
            .catch(error => { reject(error) })
        })
        .catch(error => { reject({ httpCode: 422, message: 'Input validation error', body: error }) })
    })
  },

  startActivity(input) {
    return new Promise((resolve, reject) => {
      // define input validation rules
      var rules = { name: 'required' }

      // validate input
      validateAll(input, rules)
        .then(() => {
          // instantiate Activity model
          let activity = new Activity

          // state and timestamp
          input.state = 'start'
          input.started_at = moment().format('YYYY-MM-DD HH:mm:ss')

          // start activity
          activity.create(input)
            .then(data => { resolve(output.success(null, 'Activity started successfully', 200)) })
            .catch(error => { reject(error) })
        })
        .catch(error => { reject({ httpCode: 422, message: 'Input validation error', body: error }) })
    })
  },

  endActivity(id) {
    return new Promise((resolve, reject) => {
      // instantiate Activity model
      let activity = new Activity

      // state and timestamp
      let input = {
        state: 'end',
        ended_at: moment().format('YYYY-MM-DD HH:mm:ss')
      }

      // end activity
      activity.update(id, input)
        .then(data => {
          if (data.affectedRows) {
            resolve (output.success(null, 'Activity ended successfully', 200))
          } else {
            reject({ httpCode: 404, message: 'Activity not found' })
          }
        })
        .catch(error => { reject(error) })
    })
  },
}
