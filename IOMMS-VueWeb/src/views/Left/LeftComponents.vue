<template>
  <div class="m_left">
    <chinamap></chinamap>
    <health-percent></health-percent>
    <topology-map></topology-map>
  </div>
</template>

<script>
import Chinamap from './chinamap'
import HealthPercent from './HealthPercent'
import TopologyMap from './TopologyMap'
/**
 * Created by KanadeM on 2019/6/26.
 */
export default {
  name: 'LeftComponents',
  components: {TopologyMap, HealthPercent, Chinamap}
}
</script>

<style scoped>

</style>
