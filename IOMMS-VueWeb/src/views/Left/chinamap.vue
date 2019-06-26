<template>
  <div class="m_h32" >
    <div class="m_h12">全国运维区域分布图</div>
    <div class="m_h80" id="chinamap"></div>
  </div>
</template>

<script>
/**
 * Created by KanadeM on 2019/6/26.
 */
import echarts from 'echarts'
import 'echarts-gl'
export default {
  name: 'chinamap',
  methods: {
    chinamapRender () {
      let chinaMapChart = echarts.init(document.getElementById('chinamap'))
      var data = [
        {name: '黑龙江', value: 50}, {name: '吉林', value: 12}, {name: '辽宁', value: 12}, {name: '内蒙古', value: 12},
        {name: '北京', value: 14}, {name: '天津', value: 15}, {name: '山东', value: 16}, {name: '河南', value: 18},
        {name: '河北', value: 18}, {name: '江苏', value: 19}, {name: '宁夏', value: 21}, {name: '山西', value: 21},
        {name: '陕西', value: 21}, {name: '青海', value: 22}, {name: '新疆', value: 23}, {name: '西藏', value: 24},
        {name: '湖南', value: 24}, {name: '湖北', value: 25}, {name: '四川', value: 25}, {name: '上海', value: 25},
        {name: '云南', value: 25}, {name: '重庆', value: 25}, {name: '贵州', value: 25}, {name: '广西', value: 26},
        {name: '广东', value: 26}, {name: '海南', value: 26}, {name: '福建', value: 27}, {name: '江西', value: 27},
        {name: '浙江', value: 27}, {name: '甘肃', value: 27}, {name: '安徽', value: 28}]
      var geoCoordMap = {'黑龙江': [126.6628, 45.742],
        '吉林': [126.5494, 43.8378],
        '辽宁': [123.4293, 41.8357],
        '内蒙古': [111.76522, 40.8173],
        '北京': [116.40717, 39.9047],
        '天津': [117.19937, 39.0851],
        '山东': [116.752, 36.5545],
        '河南': [113.6249, 34.7475],
        '河北': [114.5143, 38.04276],
        '江苏': [118.76295, 32.06103],
        '宁夏': [106.25867, 38.4718],
        '山西': [112.55067, 37.87089],
        '陕西': [108.93984, 34.34127],
        '青海': [101.7888, 36.6198],
        '新疆': [87.6271, 43.7957],
        '西藏': [91.11748, 29.64725],
        '湖南': [112.93886, 28.229],
        '湖北': [114.3052, 30.59276],
        '四川': [104.0757, 30.65],
        '上海': [121.48054, 31.236176],
        '云南': [102.852, 24.874],
        '重庆': [106.558, 29.569],
        '贵州': [106.714, 26.607],
        '广西': [108.334, 22.8242],
        '广东': [113.272, 23.1435],
        '海南': [110.3255, 20.0443],
        '福建': [119.796, 25.9489],
        '江西': [115.915, 25.652],
        '浙江': [120.267, 30.314],
        '甘肃': [104.105, 36.11],
        '安徽': [117.383, 31.716]
      }
      var convertData = function (data) {
        var res = []
        for (var i = 0; i < data.length; i++) {
          var geoCoord = geoCoordMap[data[i].name]
          if (geoCoord) {
            res.push({
              name: data[i].name,
              value: geoCoord.concat(data[i].value)
            })
          }
        }
        return res
      }
      var chinaMapOption = {
        grid: {
          top: 0,
          bottom: 0
        },
        tooltip: {
          trigger: 'item'
        },
        legend: {
          orient: 'vertical',
          y: 'bottom',
          x: 'right',
          data: ['预警数量'],
          textStyle: {
            color: '#fff'
          }
        },
        geo: {
          map: 'china',
          label: {
            emphasis: {
              show: false
            }
          },
          roam: true,
          itemStyle: {
            normal: {
              areaColor: '#323c48',
              borderColor: '#111'
            },
            emphasis: {
              areaColor: '#2a333d'
            }
          }
        },
        visualMap: [{
          // show: false,
          type: 'continuous',
          seriesIndex: 0,
          text: ['scatter3D'],
          textStyle: {
            color: '#fff'
          },
          itemWidth: '10%',
          itemHeight: '40%',
          calculable: true,
          max: 50,
          inRange: {
            color: ['#87aa66', '#eba438', '#d94d4c']
          }
        }, {
          show: false,
          type: 'continuous',
          seriesIndex: 1,
          calculable: true,
          max: 50,
          inRange: {
            color: ['#87aa66', '#eba438', '#d94d4c']
          }
        }],
        series: [
          {
            name: '预警数量',
            type: 'scatter',
            coordinateSystem: 'geo',
            data: convertData(data),
            symbolSize: function (val) {
              return val[2] / 5
            },
            label: {
              normal: {
                formatter: '{b}',
                position: 'right',
                show: false
              },
              emphasis: {
                show: true
              }
            },
            itemStyle: {
              normal: {
                color: '#ddb926'
              }
            }
          },
          {
            name: 'Top 5',
            type: 'effectScatter',
            coordinateSystem: 'geo',
            data: convertData(data.sort(function (a, b) {
              return b.value - a.value
            }).slice(0, 6)),
            symbolSize: function (val) {
              return val[2] / 5
            },
            showEffectOn: 'render',
            rippleEffect: {
              brushType: 'stroke'
            },
            hoverAnimation: true,
            label: {
              normal: {
                formatter: '{b}',
                position: 'right',
                show: true
              }
            },
            itemStyle: {
              normal: {
                color: '#f4e925',
                shadowBlur: 10,
                shadowColor: '#333'
              }
            },
            zlevel: 1
          }
        ]
      }
      chinaMapChart.setOption(chinaMapOption)
    }
  },
  mounted () {
    this.chinamapRender()
  }
}
</script>

<style scoped>

</style>
