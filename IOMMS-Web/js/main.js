
let left_top_Chart = echarts.init(document.getElementById('left_top'));
// 指定图表的配置项和数据
var data = [
    {name: '黑龙江', value: 50},
    {name: '吉林', value: 12},
    {name: '辽宁', value: 12},
    {name: '内蒙古', value: 12},
    {name: '北京', value: 14},
    {name: '天津', value: 15},
    {name: '山东', value: 16},
    {name: '河南', value: 18},
    {name: '河北', value: 18},
    {name: '江苏', value: 19},
    {name: '宁夏', value: 21},
    {name: '山西', value: 21},
    {name: '陕西', value: 21},
    {name: '青海', value: 22},
    {name: '新疆', value: 23},
    {name: '西藏', value: 24},
    {name: '湖南', value: 24},
    {name: '湖北', value: 25},
    {name: '四川', value: 25},
    {name: '上海', value: 25},
    {name: '云南', value: 25},
    {name: '重庆', value: 25},
    {name: '贵州', value: 25},
    {name: '广西', value: 26},
    {name: '广东', value: 26},
    {name: '海南', value: 26},
    {name: '福建', value: 27},
    {name: '江西', value: 27},
    {name: '浙江', value: 27},
    {name: '甘肃', value: 27},
    {name: '安徽', value: 28}
];
var geoCoordMap = {
    '黑龙江':[126.6628,45.742],
    '吉林':[126.5494,43.8378],
    '辽宁':[123.4293,41.8357],
    '内蒙古':[111.76522,40.8173],
    '北京':[116.40717,39.9047],
    '天津':[117.19937,39.0851],
    '山东':[116.752,36.5545],
    '河南':[113.6249,34.7475],
    '河北':[114.5143,38.04276],
    '江苏':[118.76295,32.06103],
    '宁夏':[106.25867,38.4718],
    '山西':[112.55067,37.87089],
    '陕西':[108.93984,34.34127],
    '青海':[101.7888,36.6198],
    '新疆':[87.6271,43.7957],
    '西藏':[91.11748,29.64725],
    '湖南':[112.93886,28.229],
    '湖北':[114.3052,30.59276],
    '四川':[104.0757,30.65],
    '上海':[121.48054,31.236176],
    '云南':[102.852,24.874],
    '重庆':[106.558,29.569],
    '贵州':[106.714,26.607],
    '广西':[108.334,22.8242],
    '广东':[113.272,23.1435],
    '海南':[110.3255,20.0443],
    '福建':[119.796,25.9489],
    '江西':[115.915,25.652],
    '浙江':[120.267,30.314],
    '甘肃':[104.105,36.11],
    '安徽':[117.383,31.716]
};

var convertData = function (data) {
    var res = [];
    for (var i = 0; i < data.length; i++) {
        var geoCoord = geoCoordMap[data[i].name];
        if (geoCoord) {
            res.push({
                name: data[i].name,
                value: geoCoord.concat(data[i].value)
            });
        }
    }
    return res;
};

left_top_option = {
    grid:{
        top: 0,
        bottom: 0
    },
    tooltip : {
        trigger: 'item'
    },
    legend: {
        orient: 'vertical',
        y: 'bottom',
        x:'right',
        data:['预警数量'],
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
        itemWidth: '10%' ,
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
    series : [
        {
            name: '预警数量',
            type: 'scatter',
            coordinateSystem: 'geo',
            data: convertData(data),
            symbolSize: function (val) {
                return val[2] / 5;
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
                return b.value - a.value;
            }).slice(0, 6)),
            symbolSize: function (val) {
                return val[2]/5;
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
};



// 使用刚指定的配置项和数据显示图表。
left_top_Chart.setOption(left_top_option);

let left_mid_Chart = echarts.init(document.getElementById('left_mid_mid'));
let highlight = '#03b7c9';
let demoData = [
    { name: '城镇化率', value: 80, unit: '%', pos: ['50%', '50%'], range: [0, 100] }
];
left_mid_option = {
    tooltip: {
        trigger: 'item',
        formatter: "{a} : ({d}%)"
    },
    "series": [{
        "name": "区域健康情况百分比",
        "center": [
            "50%",
            "50%"
        ],
        "radius": [
            "49%",
            "50%"
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

let left_mid_left_Chart = echarts.init(document.getElementById('left_mid_left'));
let left_mid_right_Chart = echarts.init(document.getElementById('left_mid_right'));
left_mid_left_option = {
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
left_mid_right_option = {
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
        symbol: 'image://./img/' + nodes[j].img,
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
left_bottom_option = {
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


/*
let EC = echarts.init(document.getElementById('mid_top'))
let canvas = document.createElement('canvas');
// 地球皮肤
let mapChart = echarts.init(canvas, null, {
    width: 4096,
    height: 2048
});
mapChart.setOption({
    series: [{
        type: 'map',
        map: 'world',
        // 绘制完整尺寸的 echarts 实例
        top: 0,
        left: 0,
        right: 0,
        bottom: 0,
        itemStyle: {
            normal: {
                //areaColor: '#276af3',
                borderColor: '#111'
            },
            emphasis: {
                areaColor: '#2a333d'
            }
        },
        boundingCoords: [
            [-180, 90],
            [180, -90]
        ]
    }]
});
let mid_top_option = {
    title: {
        text: '',
        textStyle: {
            color: '#fff'
        }
    },
    tooltip: {
        show: true
    },
    visualMap: [{
        // show: false,
        type: 'continuous',
        seriesIndex: 0,
        text: ['scatter3D'],
        textStyle: {
            color: '#fff'
        },
        calculable: true,
        max: 1000,
        inRange: {
            color: ['#ada3c5',  '#3bdde7']
        }
    }, {
        show: false,
        type: 'continuous',
        seriesIndex: 1,
        calculable: true,
        max: 1000,
        inRange: {
            color: ['#ada3c5',  '#3bdde7']
        }
    }],
    globe: {
        baseTexture: mapChart,
        // shading: 'lambert',
        light: { // 光照阴影
            main: {
                color: '#000', // 光照颜色
                intensity: 1.2, // 光照强度
                // shadowQuality: 'high', //阴影亮度
                shadow: false, // 是否显示阴影
                alpha: 40,
                beta: -30
            },
            ambient: {
                intensity: 0.5
            }
        },
        shading: 'lambert',
        viewControl: {
            alpha: 30,
            beta: 160,
            // targetCoord: [116.46, 39.92],
            autoRotate: true,
            autoRotateAfterStill: 10,
            distance: 240
        },

    },
    series: [{
        name: 'lines3D',
        type: 'lines3D',
        zlevel: 2,
        coordinateSystem: 'globe',
        effect: {
            show: true
        },
        blendMode: 'lighter',
        lineStyle: {
            width: 2
        },
        data: [],
        silent: false
    },
        {
            name: 'lines3D',
            type: 'bar3D',
            zlevel: 2,
            coordinateSystem: 'globe',
            effect: {
                show: true
            },
            barSize: 1,
            minHeight: 0.2,
            blendMode: 'lighter',
            lineStyle: {
                width: 2
            },
            data: [],
            silent: false
        }]
};
// 随机数据
const rodamData = () => {
    let longitude = 105.18;
    let longitude2 = Math.random() * 360 - 180;
    let latitude = 37.51;
    let latitude2 = Math.random() * 180 - 90;
    return {
        coords: [
            [longitude2, latitude2],
            [longitude, latitude]
        ],
        value: (Math.random() * 1000).toFixed(2)
    }
};
const barrodamData = () => {
    let longitude =  Math.random() * 360 - 180;
    let latitude =  Math.random() * 180 - 90;
    return {
        value: [longitude,latitude,Math.random() * 1000]
    }
};
var locate = [];
for (let i = 0; i < 200; i++) {
    //mid_top_option.series[0].data = mid_top_option.series[0].data.concat(rodamData());
    locate.push(barrodamData().value);
    mid_top_option.series[1].data = mid_top_option.series[1].data.concat(locate);

}
console.log(locate);
EC.setOption(mid_top_option);



/*
let mid_top_chart = echarts.init(document.getElementById('mid_top'));
mid_top_option = {
   backgroundColor: '#000',
   globe: {
       baseTexture: './img/earth.jpg',
       heightTexture: './img/bathymetry_bw_composite_4k.jpg',

       displacementScale: 0.1,

       shading: 'lambert',

       environment: './img/starfield.jpg',

       light: {
           ambient: {
               intensity: 0.1
           },
           main: {
               intensity: 1.5
           }
       },

       layers: [{
           type: 'blend',
           blendTo: 'emission',
           texture: './img/night.jpg'
       }, {
           type: 'overlay',
           texture: './img/clouds.png',
           shading: 'lambert',
           distance: 5
       }]
   },
   series: []
};
mid_top_chart.setOption(mid_top_option);
*/

let right_t2_chart = echarts.init(document.getElementById('right_t2'));

right_t2_option = {
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

let right_t3_chart = echarts.init(document.getElementById('right_t3'))

right_t3_option = {
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
right_t3_chart.setOption(right_t3_option);

let right_t4_chart = echarts.init(document.getElementById('right_t4'))

right_t4_option = {
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


let mid_bottom_left_chart = echarts.init(document.getElementById('mid_bottom_left'))

var maxData = 2000;

mid_bottom_left_option = {
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

