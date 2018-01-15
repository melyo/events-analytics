var { Event } = require('../models/event')
var output = require('../../lib/output')
var eventService = require('../../services/eventService')

module.exports = {
  collection(req, res, next) {
    let event = new Event
    event.all()
      .then(data => { res.json(output.success(data, 'Success', 200)) })
      .catch(error => { next(error) })
  },

  store(req, res, next) {
    eventService.trackEvent(req.body)
      .then(data => { res.json(data) })
      .catch(error => { next(error) })
  },

  list(req, res, next) {
    let event = new Event
    event.list()
      .then(data => { res.json(output.success(data, 'Success', 200)) })
      .catch(error => { next(error) })
  },
}
