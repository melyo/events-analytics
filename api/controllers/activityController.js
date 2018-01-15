var { Activity } = require('../models/activity')
var output = require('../../lib/output')
var eventService = require('../../services/eventService')

module.exports = {
  collection(req, res, next) {
    let activity = new Activity
    activity.all()
      .then(data => { res.json(output.success(data, 'Success', 200)) })
      .catch(error => { next(error) })
  },

  start(req, res, next) {
    eventService.startActivity(req.body)
      .then(data => { res.json(data) })
      .catch(error => { next(error) })
  },

  end(req, res, next) {
    eventService.endActivity(req.params.id)
      .then(data => { res.json(data) })
      .catch(error => { next(error) })
  },

  day(req, res, next) {
    let activity = new Activity
    activity.dayActivity(req.query.date, req.query.now)
      .then(data => { res.json(output.success(data, 'Success', 200)) })
      .catch(error => { next(error) })
  },
}
