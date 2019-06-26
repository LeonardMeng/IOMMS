/**
 * Created by KanadeM on 2019-06-23
 */
import Vue from 'vue'
import axios from 'axios'
import VueAxios from 'vue-axios'
import { basecfg } from 'config'
import localStorage from '../local-storage/'

Vue.use(VueAxios, axios)

Vue.axios.defaults.baseURL = basecfg.base_url

/**
 * 封装axios的通用请求
 * @param  {string}   type      get或post
 * @param  {string}   path       请求的接口URL
 * @param  {object}   data      传的参数，没有则传空对象
 * @param  {Function} fn        回调函数
 * @param  {boolean}  tokenFlag 是否需要携带token参数，为true，不需要；false，需要。一般除了登录，都需要
 * @param  {object}   headers   自定义的一些头   不传为空
 * @param  {boolean}  opts      axios的请求参数自定义 不传为空
 */
export default function ({
  type,
  path,
  data,
  fn,
  errFn,
  tokenFlag,
  headers,
  opts
} = {}) {
  var options = {
    method: type,
    url: path,
    headers: {'Content-Type': 'application/json'}
  }

  options[type === 'get' ? 'params' : 'data'] = data

  if (tokenFlag) {
    options.headers.Authorization = 'BasicAuth ' + localStorage.get(basecfg.db_token)
    options.headers.token = localStorage.get(basecfg.db_token)
  }
  if (options.headers.ContentType) {
    options.headers.Authorization = 'application/json'
  }

  // axios内置属性均可写在这里
  if (opts && typeof opts === 'object') {
    for (var f in opts) {
      options[f] = opts[f]
    }
  }
  // 发送请求
  console.log(options)
  Vue.axios(options).then((response) => {
    fn(response.data)
  }).catch((error) => {
    console.log(error)
  })
  // Vue.axios(options).then((res) => {
  //   debugger
  //   if (res[basecfg.api_status_key_field] === basecfg.api_status_value_field) {
  //     if (res.data.type) {
  //       fn(res.data)
  //     } else {
  //       // debugger
  //       if (!res.data.success && res.data.statusCode === '1400') { // && res.data.statusCode === '1400'
  //         localStorage.clear()
  //         window.location.href = window.global.SecDirectory
  //       } else {
  //         fn(res.data)
  //       }
  //     }
  //   } else {
  //     if (errFn) {
  //       errFn.call(this, res.data)
  //     } else {
  //       console.log('返回错误：' + res.data.message)
  //     }
  //   }
  // }).catch((err) => {
  //   if (err.response === undefined) return
  //   console.log('请求错误：' + (err.response ? err.response.status : '') + ',' + (err.response ? err.response.statusText : ''))
  // })
};
