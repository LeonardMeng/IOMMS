<template>
  <div class="m_mid">
    <Earth></Earth>
    <DatabaseInfo></DatabaseInfo>
    <MQWaingInfo></MQWaingInfo>
  </div>
</template>

<script>
import Earth from './Earth'
import DatabaseInfo from './DatabaseInfo'
import MQWaingInfo from './MQWaingInfo'
/**
 * Created by KanadeM on 2019/6/26.
 */
export default {
  name: 'MiddleComponents',
  components: {MQWaingInfo, DatabaseInfo, Earth}
}
</script>

<style scoped>

</style>
