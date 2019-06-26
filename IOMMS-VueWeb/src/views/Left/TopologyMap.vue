<template>
  <div class="m_h32">
    <div class="m_h12">区域运维网络拓扑图</div>
    <div class="m_h80"  id="left_bottom"></div>
  </div>
</template>

<script>
/**
 * Created by KanadeM on 2019/6/26.
 */
import echarts from 'echarts'
import 'echarts-gl'
export default {
  name: 'TopologyMap',
  methods: {
    TopologyMapRender () {

      let left_bottom_Chart = echarts.init(document.getElementById('left_bottom'));
      var nodes = [{
        x: '0',
        y: '12',
        name: '数据库服务器',
        img: 'save.png',
      },
        {
          x: '3',
          y: '0',
          name: '内网151服务器',
          img: 'server.png'
        },
        {
          x: '6',
          y: '0',
          name: '内网51服务器',
          img: 'server.png'
        },
        {
          x: '5',
          y: '24',
          name: '内网57服务器',
          img: 'server.png'
        },
        {
          x: '9',
          y: '12',
          name: '防火墙',
          img: 'firewall.png'
        },
        {
          x: '12',
          y: '12',
          name: '监控服务器',
          img: 'switch.png'
        }
      ];
      var links = [{
        source: '内网151服务器',
        target: '内网51服务器',
        name: '数据传输'
      }, {
        source: '内网51服务器',
        target: '数据库服务器',
        name: '监控数据存储'
      }, {
        source: '数据库服务器',
        target: '内网151服务器',
        name: '数据传输'
      },
        {
          source: '内网51服务器',
          target: '防火墙',
          name: '数据传输'
        },
        {
          source: '防火墙',
          target: '内网51服务器',
          name: '数据传输'
        },
        {
          source: '内网57服务器',
          target: '数据库服务器',
          name: '数据传输'
        },
        {
          source: '防火墙',
          target: '内网57服务器',
          name: '数据传输'
        },
        {
          source: '防火墙',
          target: '监控服务器',
          name: '数据传输'
        },
        {
          source: '监控服务器',
          target: '防火墙',
          name: '数据传输'
        }
      ];
      var charts = {
        nodes: [],
        links: [],
        linesData: []
      };
      var dataMap = new Map();
      for (var j = 0; j < nodes.length; j++) {
        var x = parseInt(nodes[j].x);
        var y = parseInt(nodes[j].y);
        var node = {
          name: nodes[j].name,
          value: [x, y],
          symbolSize: 40,
          alarm: nodes[j].alarm,
          symbol: 'image://./static/img/' + nodes[j].img,
          itemStyle: {
            normal: {
              color: '#12b5d0',
            }
          }
        };
        dataMap.set(nodes[j].name, [x, y]);
        charts.nodes.push(node)
      }
      for (var i = 0; i < links.length; i++) {
        var link = {
          source: links[i].source,
          target: links[i].target,
          label: {
            normal: {
              show: true,
              formatter: links[i].name
            }
          },
          lineStyle: {
            normal: {
              color: '#12b5d0',
              curveness: 0
            }
          }
        };
        charts.links.push(link);
        // 组装动态移动的效果数据
        var lines = [{
          coord: dataMap.get(links[i].source)
        }, {
          coord: dataMap.get(links[i].target)
        }];
        charts.linesData.push(lines)
      }
      let left_bottom_option = {
        xAxis: {
          show: false,
          type: 'value'
        },
        grid:{
          top: '10%',
          bottom: '25%'
        },
        yAxis: {
          show: false,
          type: 'value'
        },
        series: [{
          type: 'graph',
          layout: 'none',
          coordinateSystem: 'cartesian2d',
          symbolSize: 30,
          label: {
            normal: {
              show: true,
              position: 'bottom',
              color: '#12b5d0'
            }
          },
          lineStyle: {
            normal: {
              width: 2,
              shadowColor: 'none'
            }
          },
          edgeSymbolSize: 8,
          data: charts.nodes,
          links: charts.links,
          itemStyle: {
            normal: {
              label: {
                show: true,
                formatter: function(item) {
                  return item.data.name
                }
              }
            }
          }
        }, {
          name: 'A',
          type: 'lines',
          coordinateSystem: 'cartesian2d',
          z: 1,
          effect: {
            show: true,
            trailLength: 0,
            symbol: 'arrow',
            color: '#12b5d0',
            symbolSize: 8
          },
          lineStyle: {
            normal: {
              curveness: 0
            }
          },
          data: charts.linesData
        }]
      };
// 用于告警的动态效果
      setInterval(() => {
        var dataI = [];
        for (var n = 0; n < nodes.length; n++) {
          var alarm = nodes[n].alarm;
          if (alarm !== null && alarm !== '' && alarm !== undefined) {
            left_bottom_option.series[0].data[n].symbolSize = 60;
            left_bottom_option.series[0].data[n].label = {
              normal: {
                color: '#DC143C'
              }
            };
            left_bottom_option.series[0].itemStyle.normal.label.formatter = function(item) {
              if (item.data.alarm !== undefined) {
                return item.data.name + '\n[ ' + item.data.alarm + ' ]'
              } else {
                return item.data.name
              }
            };
            dataI.push(n)
          }
        }
        left_bottom_Chart.setOption(left_bottom_option);
        setTimeout(() => {
          for (var m = 0; m < dataI.length; m++) {
            left_bottom_option.series[0].data[dataI[m]].symbolSize = 50;
            left_bottom_option.series[0].data[dataI[m]].label = {
              normal: {
                color: '#12b5d0'
              }
            };
            left_bottom_option.series[0].itemStyle.normal.label.formatter = function(item) {
              return item.data.name
            }
          }
          left_bottom_Chart.setOption(left_bottom_option)
        }, 500)
      }, 1000)
    }
  },
  mounted () {
    this.TopologyMapRender()
  }
}
</script>

<style scoped>

</style>
