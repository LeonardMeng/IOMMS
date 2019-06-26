/**
 * Created by KanadeM on 2019-06-23
 */
import { basecfg } from 'config/'

class LocalStorage {
  constructor () {
    this.localStorage = window.localStorage
    this.prefix = basecfg.db_prefix
  }

  set (key, value, fn) {
    try {
      value = JSON.stringify(value)
    } catch (e) {
    }

    this.localStorage.setItem(this.prefix + key, value)

    fn && fn()
  }

  get (key, fn) {
    if (!key) {
      throw new Error('没有找到key。')
    }
    if (typeof key === 'object') {
      throw new Error('key不能是一个对象。')
    }
    var value = this.localStorage.getItem(this.prefix + key)
    if (value !== null) {
      try {
        value = JSON.parse(value)
      } catch (e) {
      }
    }

    return value
  }

  remove (key) {
    this.localStorage.removeItem(this.prefix + key)
  }

  clear () {
    this.localStorage.clear()
  }
}

export default new LocalStorage()
