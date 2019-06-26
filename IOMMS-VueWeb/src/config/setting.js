/**
 * Created by KanadeM on 2019-06-23
 */

var basecfg = {
  base_url: window.global.ApiUrl, // 接口地址
  db_prefix: 'kanadem_cache_', // 本地存储前缀
  db_token: 'token', // token的key

  // 状态码字段
  api_status_key_field: 'status',

  // 状态码value
  api_status_value_field: 200
}

export {
  basecfg
}
