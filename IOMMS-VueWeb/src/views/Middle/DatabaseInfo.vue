<template>
  <div class="m_h32m1">
    <div class="m_h12">数据库运行基本情况</div>
    <div class="m_h80" id="mid_bottom_left"></div>
  </div>
</template>

<script>
/**
 * Created by KanadeM on 2019/6/26.
 */
import echarts from 'echarts'
import 'echarts-gl'
export default {
  name: 'DatabaseInfo',
  methods: {
    DatabaseInfoRender(){
      let mid_bottom_left_chart = echarts.init(document.getElementById('mid_bottom_left'))
      let mid_bottom_left_option = {
        legend: {
          bottom: 20,
          textStyle:{
            color:'#fff',
          },
          show: false,
          data: ['钥匙量', '有效房源量']
        },
        grid: {
          top: 0,
          left: '3%',
          right: '4%',
          bottom: 0,
          containLabel: true
        },

        tooltip: {
          show:"true",
          trigger: 'axis',
          axisPointer: { // 坐标轴指示器，坐标轴触发有效
            type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
          }
        },
        xAxis:  {
          type: 'value',
          axisTick : {show: false},
          axisLine: {
            show: false,
            lineStyle:{
              color:'#fff',
            }
          },
          splitLine: {
            show: false
          },
        },
        yAxis: [
          {
            type: 'category',
            axisTick : {show: false},
            axisLine: {
              show: true,
              lineStyle:{
                color:'#fff',
              }
            },
            data: ['广州','深圳','东莞','天津','惠州']
          },
          {
            type: 'category',
            axisLine: {show:false},
            axisTick: {show:false},
            axisLabel: {show:false},
            splitArea: {show:false},
            splitLine: {show:false},
            data: ['广州','深圳','东莞','天津','惠州']
          },

        ],
        series: [
          {
            name: '有效房源量',
            type: 'bar',
            yAxisIndex:1,

            itemStyle:{
              normal: {
                show: true,
                color: '#277ace',
                barBorderRadius:50,
                borderWidth:0,
                borderColor:'#333',
              }
            },
            barGap:'0%',
            barCategoryGap:'50%',
            data: [120, 132, 101, 134, 90, 230, 210, 125, 231, 132]
          },
          {
            name: '钥匙量',
            type: 'bar',
            itemStyle:{
              normal: {
                show: true,
                color: '#5de3e1',
                barBorderRadius:50,
                borderWidth:0,
                borderColor:'#333',
              }
            },
            barGap:'0%',
            barCategoryGap:'50%',
            data: [32, 52, 41, 64, 15, 10, 32, 25, 210, 32]
          }

        ]
      };
      mid_bottom_left_chart.setOption(mid_bottom_left_option);

    }
  },
  mounted () {
    this.DatabaseInfoRender()
  }
}
</script>

<style scoped>

</style>
