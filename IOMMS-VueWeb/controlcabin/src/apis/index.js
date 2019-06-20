/**
 * Created by 顾栋梁 on 2018/05/04
 */

/**
 * 导出所有模块需要用到接口
 * 一级属性：模块名
 * 一级属性中的方法：当前模块需要用的接口
 * @type {Object}
 */

// import system from './system/'
import database from './database/'
import disk from './disk/'
import messagequeue from './messagequeue/'
import network from './network/'
import news from './news/'
import server from './server/'
export default [{
  module: 'database',
  name: '数据库信息',
  list: database
}, {
  module: 'disk',
  name: '磁盘信息',
  list: disk
}, {
  module: 'messagequeue',
  name: '消息队列信息',
  list: messagequeue
},
{
  module: 'network',
  name: '网络信息',
  list: network
},
{
  module: 'news',
  name: '系统最新消息',
  list: news
},
{
  module: 'server',
  name: '服务器消息',
  list: server
}]
