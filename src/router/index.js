import Vue from 'vue'
import Router from 'vue-router'

// Containers
import Full from '@/containers/Full'

// Views
import Events from '@/views/Events'
import Activities from '@/views/Activities'

Vue.use(Router)

export default new Router({
  mode: 'history',
  linkActiveClass: 'open active',
  scrollBehavior: () => ({ y: 0 }),
  routes: [
    {
      path: '/',
      redirect: '/events',
      name: 'Home',
      component: Full,
      children: [
        {
          path: 'events',
          name: 'Events',
          component: Events
        },
        {
          path: 'activities',
          name: 'Activities',
          component: Activities
        }
      ]
    }
  ]
})
