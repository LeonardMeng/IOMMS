let EC = echarts.init(document.getElementById('mid_top'));
let canvas = document.createElement('canvas');
// 地球皮肤
let mapChart = echarts.init(canvas, null, {
    width: 4096,
    height: 2048
});

mapChart.setOption({
    backgroundColor: 'rbga(8,8,62,0.5)',
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
                areaColor: '#0f55c4',

                borderColor: '#111',
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
            color: ['#ada3c5',  '#00fdfd']
        }
    }, {
        show: false,
        type: 'continuous',
        seriesIndex: 1,
        calculable: true,
        max: 1000,
        inRange: {
            color: ['#ada3c5',  '#00fdfd']
        }
    }],
    globe: {
        baseTexture: mapChart,
        // shading: 'lambert',
        light: { // 光照阴影
            main: {
                color: '#093482', // 光照颜色
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
        },{
            type: 'scatter3D',
            coordinateSystem: 'globe',
            blendMode: 'lighter',
            symbolSize: 2,
            itemStyle: {
                color: 'rgb(50, 50, 150)',
                opacity: 1
            },
            data: populiton.filter(function (dataItem) {
                return dataItem[2] > 0;
            }).map(function (dataItem) {
                return [dataItem[0], dataItem[1], Math.sqrt(dataItem[2])];
            })
        },{
            type: 'scatter3D',
            coordinateSystem: 'globe',
            blendMode: 'lighter',
            symbolSize: 2,
            itemStyle: {
                color: 'rgb(50, 50, 150)',
                opacity: 1
            },
            data: populiton.filter(function (dataItem) {
                return dataItem[2] > 0;
            }).map(function (dataItem) {
                return [dataItem[0], dataItem[1], 1000];
            })
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
EC.setOption(mid_top_option);
