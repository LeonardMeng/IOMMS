<template>
  <div class="m_h32">
    <div class="m_h12">区域健康情况百分比</div>
    <div class="m_h80_1" id="left_mid_left"></div>
    <div class="m_h80_2" id="left_mid_mid"></div>
    <div class="m_h80_1" id="left_mid_right"></div>
  </div>
</template>

<script>
/**
 * Created by KanadeM on 2019/6/26.
 */
import  echarts from 'echarts'
import 'echarts-gl'
export default {
  name: 'HealthPercent',
  methods:{
    electricRender( ){
      let left_mid_left_Chart = echarts.init(document.getElementById('left_mid_left'));
      let left_mid_right_Chart = echarts.init(document.getElementById('left_mid_right'));
      let left_mid_left_option = {
        grid: {
          top: 10,
          left: 10,
          right: 10,
          bottom: 10
        },
        xAxis: {
          splitLine: {
            show: false
          },
          axisLine: {
            show: false
          },
          axisTick: {
            show: false
          },
          axisLabel: {
            show: false
          },
          max: 250,
          min: 0
        },
        yAxis: {
          silent: true,
          splitLine: {
            show: false
          },
          axisLine: {
            show: false
          },
          axisTick: {
            show: false
          },
          axisLabel: {
            show: false
          },
          max: 1000,
          min: 0
        },
        series: [ {
          coordinateSystem: 'cartesian2d',
          type: 'lines',
          polyline: true,
          zlevel: 1,
          effect: {
            show: true,
            constantSpeed: 500,
            trailLength: 0.05,
            symbolSize: 2,
            symbol: 'circle',
            loop: true
          },
          lineStyle: {
            normal: {
              color: '#ffffff',
              opacity: 0.02,
              curveness: 0.3
            }
          },
          data: [{
            coords: [
              [25, 500],[70,500],[75,600],[80,225],[85,500],[100,500],[105,800],[110,450],[115,500],[130,500],[135,550],[140,450],
              [145,500],[155,500],[160,350],[165,700],[170,500],[185,500],[190,425],[195,650],[200,500],[250,500],
              [200,500],[195,650],[190,425],[185,500],[170,500],[165,700],[160,350],[155,500],[145,500],[140,450],[135,550],
              [130,500],[115,500],[110,450],[105,800],[100,500],[85,500],[80,225],[75,600],[70,500],[25, 500]
            ]
          }]
        }]
      };
      let left_mid_right_option = {
        grid: {
          top: 10,
          left: 10,
          right: 10,
          bottom: 10
        },
        xAxis: {
          splitLine: {
            show: false
          },
          axisLine: {
            show: false
          },
          axisTick: {
            show: false
          },
          axisLabel: {
            show: false
          },
          max: 250,
          min: 0
        },
        yAxis: {
          silent: true,
          splitLine: {
            show: false
          },
          axisLine: {
            show: false
          },
          axisTick: {
            show: false
          },
          axisLabel: {
            show: false
          },
          max: 1000,
          min: 0
        },
        series: [ {
          coordinateSystem: 'cartesian2d',
          type: 'lines',
          polyline: true,
          zlevel: 1,
          effect: {
            show: true,
            constantSpeed: 500,
            trailLength: 0.05,
            symbolSize: 2,
            symbol: 'circle',
            loop: true
          },
          lineStyle: {
            normal: {
              color: '#ff00ff',
              opacity: 0.02,
              curveness: 0.3
            }
          },
          data: [{
            coords: [
              [250,500],[200,500],[195,650],[190,425],[185,500],[170,500],[165,700],[160,350],[155,500],[145,500],[140,450],[135,550],
              [130,500],[115,500],[110,450],[105,800],[100,500],[85,500],[80,225],[75,600],[70,500],
              [25, 500],[70,500],[75,600],[80,225],[85,500],[100,500],[105,800],[110,450],[115,500],[130,500],[135,550],[140,450],
              [145,500],[155,500],[160,350],[165,700],[170,500],[185,500],[190,425],[195,650],[200,500],[250,500]
            ]
          }]
        }]
      };
      left_mid_left_Chart.setOption(left_mid_left_option);
      left_mid_right_Chart.setOption(left_mid_right_option);

    },
    HealthPercentRender(){
      let left_mid_Chart = echarts.init(document.getElementById('left_mid_mid'));
      let highlight = '#03b7c9';
      let demoData = [
        { name: '城镇化率', value: 80, unit: '%', pos: ['50%', '50%'], range: [0, 100] }
      ];
      let left_mid_option = {
        tooltip: {
          trigger: 'item',
          formatter: "{a} : ({d}%)"
        },
        series: [{
          name: "区域健康情况百分比",
          center: [
            "50%",
            "50%"
          ],
          radius: [
            "49%",
            "50%"
          ],
          clockWise: false,
          hoverAnimation: false,
          type: "pie",
          data: [{
            "value": 84,
            "name": "",
            "label": {
              "normal": {
                "show": true,
                "formatter": '{d} %',
                "textStyle": {
                  "fontSize": 14,
                  "fontWeight": "bold"
                },
                "position": "center"
              }
            },
            "labelLine": {
              "show": false
            },
            "itemStyle": {
              "normal": {
                "color": "#5886f0",
                "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                  offset: 0,
                  color: '#00a2ff'
                }, {
                  offset: 1,
                  color: '#70ffac'
                }]),
                "borderWidth": 25
              },
              "emphasis": {
                "color": "#5886f0",
                "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                  offset: 0,
                  color: '#85b6b2'
                }, {
                  offset: 1,
                  color: '#6d4f8d'
                }]),
                "borderWidth": 25
              }
            },
          }, {
            "name": " ",
            "value": 16,
            "itemStyle": {
              "normal": {
                "label": {
                  "show": false
                },
                "labelLine": {
                  "show": false
                },
                "color": 'rgba(0,0,0,0)',
                "borderColor": 'rgba(0,0,0,0)',
                "borderWidth": 0
              },
              "emphasis": {
                "color": 'rgba(0,0,0,0)',
                "borderColor": 'rgba(0,0,0,0)',
                "borderWidth": 0
              }
            }
          }]
        }, {
          "name": "CPU分配率 外圈",
          "center": [
            "50%",
            "50%"
          ],
          "radius": [
            "59%",
            "60%"
          ],
          "clockWise": false,
          "hoverAnimation": false,
          "type": "pie",
          "data": [{
            "value": 84,
            "name": "",
            "label": {
              "normal": {
                "show": true,
                "formatter": '{d} %',
                "textStyle": {
                  "fontSize": 14,
                  "fontWeight": "bold"
                },
                "position": "center"
              }
            },
            "labelLine": {
              "show": false
            },
            "itemStyle": {
              "normal": {
                "color": "#5886f0",
                "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                  offset: 0,
                  color: '#00a2ff'
                }, {
                  offset: 1,
                  color: '#70ffac'
                }]),
                "borderWidth": 1
              },
              "emphasis": {
                "color": "#5886f0",
                "borderColor": new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                  offset: 0,
                  color: '#85b6b2'
                }, {
                  offset: 1,
                  color: '#6d4f8d'
                }]),
                "borderWidth": 1
              }
            },
          }, {
            "name": " ",
            "value": 16,
            "itemStyle": {
              "normal": {
                "label": {
                  "show": false
                },
                "labelLine": {
                  "show": false
                },
                "color": 'rgba(0,0,0,0)',
                "borderColor": 'rgba(0,0,0,0)',
                "borderWidth": 0
              },
              "emphasis": {
                "color": 'rgba(0,0,0,0)',
                "borderColor": 'rgba(0,0,0,0)',
                "borderWidth": 0
              }
            }
          }]
        }]
      };
      left_mid_Chart.setOption(left_mid_option);
    }
  },
  mounted () {
    this.electricRender()
    this.HealthPercentRender()
  }
}
</script>

<style scoped>

</style>
