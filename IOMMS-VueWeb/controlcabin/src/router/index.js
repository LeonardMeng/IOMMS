import Vue from 'vue'
import Router from 'vue-router'
import controlcabin from '../views/controlcabin'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/views/controlcabin',
      name: 'controlcabin',
      component: controlcabin
    }
  ]
})
