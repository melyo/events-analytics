let eventController = require('./controllers/eventController')
let activityController = require('./controllers/activityController')

module.exports = (app) => {

  // events
  app.get('/events', eventController.collection)
  app.post('/events', eventController.store)

  // activities
  app.get('/activities', activityController.collection)
  app.post('/activities', activityController.start)
  app.patch('/activities/:id/end', activityController.end)

}
