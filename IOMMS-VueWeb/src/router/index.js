import Vue from 'vue'
import Router from 'vue-router'
import {vueRouter} from './router'

Vue.use(Router)

vueRouter.beforeEach((to, from, next) => {
  if (to.matched.some(record => record.meta.requiresAuth)) {
    // 这里判断用户是否登录，验证本地存储是否有token
    if (!localStorage.token) { // 判断当前的token是否存在
      next({
        path: '/controlcabin',
        query: { redirect: to.fullPath }
      })
    } else {
      next()
    }
  } else {
    next() // 确保一定要调用 next()
  }
})

export default vueRouter
