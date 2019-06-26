<template>
  <div class="m_h21">
    <div class="m_h19t">最近七天网络波动情况</div>
    <div class="m_h70" id="right_t2"></div>
  </div>
</template>

<script>
/**
 * Created by KanadeM on 2019/6/26.
 */
import echarts from 'echarts'
import 'echarts-gl'
export default {
  name: 'NetworkInfo',
  methods: {
    NetworkInfoRender () {
      let right_t2_chart = echarts.init(document.getElementById('right_t2'));

      let right_t2_option = {
        tooltip: {
          trigger: 'axis',
          position: [2, 2]
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
      right_t2_chart.setOption(right_t2_option);
    }
  },
  mounted () {
    this.NetworkInfoRender()
  }
}
</script>

<style scoped>

</style>
