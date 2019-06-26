<template>
  <div class="m_h32">
    <div class="m_h12">最近七天内存使用情况</div>
    <div class="m_h80"  id="right_t4"></div>
  </div>
</template>

<script>
/**
 * Created by KanadeM on 2019/6/26.
 */

import echarts from 'echarts'
import 'echarts-gl'
export default {
  name: 'MemoryInfo',
  methods: {
    MemoryInfoRender () {

      let right_t4_chart = echarts.init(document.getElementById('right_t4'))

      let right_t4_option = {
        tooltip: {
          trigger: 'axis'
        },
        grid: {
          left: '3%',
          right: '4%',
          bottom: '0%',
          top:'10%',
          containLabel: true
        },
        toolbox: {
          feature: {
            saveAsImage: {}
          }
        },
        xAxis: {
          type: 'category',
          boundaryGap: false,
          color:'#000',
          data: ['周一','周二','周三','周四','周五','周六','周日']
        },
        yAxis: {
          type: 'value'
        },
        series: [
          {
            name:'联盟广告',
            type:'line',
            stack: '总量',
            data:[5, 50, 20, 60,80, 70, 100],
            smooth: true
          },
          {
            name:'视频广告',
            type:'line',
            stack: '总量',
            data:[5, 50, 20, 60,80, 70, 100],
            smooth: true
          },
          {
            name:'直接访问',
            type:'line',
            stack: '总量',
            data:[5, 50, 20, 60,80, 70, 100],
            smooth: true
          },
          {
            name:'搜索引擎',
            type:'line',
            stack: '总量',
            data:[5, 50, 20, 60,80, 70, 100],
            smooth: true
          }
        ]
      };
      right_t4_chart.setOption(right_t4_option);

    }
  },
  mounted () {
    this.MemoryInfoRender()
  }
}
</script>

<style scoped>

</style>
