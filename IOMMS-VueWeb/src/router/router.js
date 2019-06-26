/**
 * Created by KanadeM on 2019-06-23
 */
import Vue from 'vue'
import Router from 'vue-router'
import {Login, Error, Controlcabin} from '../views'

Vue.use(Router)

export const vueRouter = new Router({
  mode: 'history',
  routes: [
    {
      path: '/login',
      name: '登录',
      hidden: true,
      component: Login
    },
    {
      path: '/controlcabin',
      name: '驾驶舱',
      hidden: true,
      component: Controlcabin
    },
    {
      path: '/',
      name: '根目录',
      redirect (to) {
        return '/controlcabin'
      }
    },
    {
      path: '/error',
      name: '错误',
      hidden: true,
      component: Error
    },
    {
      path: '*',
      hidden: true,
      redirect (to) {
        return '/error'
      }
    }
  ]
})
