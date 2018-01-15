var eventController = require('./controllers/eventController')
var activityController = require('./controllers/activityController')

module.exports = (app) => {

  // prefix
  var prefix = '/api/v1'

  // events
  app.get(prefix+'/events', eventController.collection)
  app.post(prefix+'/events', eventController.store)
  app.get(prefix+'/events/list', eventController.list)
  // app.get(prefix+'/events/count', eventController.count)

  // activities
  app.get(prefix+'/activities', activityController.collection)
  app.post(prefix+'/activities', activityController.start)
  app.patch(prefix+'/activities/:id/end', activityController.end)

}
