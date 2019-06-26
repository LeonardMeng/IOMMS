<template>
  <div id="app" >
    <router-view></router-view>
  </div>
</template>

<script>
export default {
  name: 'App',
  data () {
    return {
      message: 'First Vue Test'
    }
  }
}

</script>

<style>
  @import "../static/css/common.css";
</style>
