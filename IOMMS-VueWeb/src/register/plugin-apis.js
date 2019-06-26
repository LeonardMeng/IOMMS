/**
 * Created by KanadeM on 2019-06-23
 */

import { axios } from 'utils/'
import request from 'apis/'

var pluginApis = {}
for (var i = 0; i < request.length; i++) {
  if (typeof request[i] === 'object' && request[i].list && Array.isArray(request[i].list)) {
    for (var j = 0; j < request[i].list.length; j++) {
      pluginApis['api_' + request[i].module + '_' + request[i].list[j].method] = (function (n, m) {
        return function ({type = request[n].list[m].type, path = request[n].list[m].path, data, fn, errFn, headers, opts} = {}) {
          axios.call(this, {
            type,
            path,
            data,
            fn,
            errFn,
            headers,
            opts
          })
        }
      })(i, j)
    }
  }
}
console.log(pluginApis)
export default pluginApis
