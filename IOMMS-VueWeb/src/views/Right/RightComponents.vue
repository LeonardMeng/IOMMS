<template>
  <div class="m_right">
    <news></news>
    <network-info></network-info>
    <disk-info></disk-info>
    <memory-info></memory-info>
  </div>
</template>

<script>
import News from './News'
import NetworkInfo from './NetworkInfo'
import DiskInfo from './DiskInfo'
import MemoryInfo from './MemoryInfo'
/**
 * Created by KanadeM on 2019/6/26.
 */
export default {
  name: 'RightComponents',
  components: {MemoryInfo, DiskInfo, NetworkInfo, News}
}
</script>

<style scoped>

</style>
