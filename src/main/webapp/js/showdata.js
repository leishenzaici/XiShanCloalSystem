
option = {
			title : {
				text:'数据统计',
				show:true,
				textStyle:{
					color:'#fff'
				},
				x:'left',
				y: -80	
			},
			tooltip : {
				trigger : 'axis'
			},
			legend : {
				x:'left',
				data : [ '红药', '白药', '黄药', '泥沙' ]
			},
			toolbox : {
				x:'right',
				show : true,
				feature : {
					dataZoom : {
						yAxisIndex : 'none'
					},
					dataView : {
						readOnly : false
					},
					magicType : {
						type : [ 'line', 'bar' ]
					},
					restore : {},
					saveAsImage : {}
				}
			},
			xAxis : {
				type : 'category',
				boundaryGap : false,
				data : [ '2018/1/1', '2018/1/2', '2018/1/3', '2018/1/4',
						'2018/1/5', '2018/1/6', '2018/1/7', '2018/1/8',
						'2018/1/9', '2018/1/10', '2018/1/11', '2018/1/12',
						'2018/1/13', '2018/1/14', '2018/1/15', '2018/1/16',
						'2018/1/17', '2018/1/18', '2018/1/19', '2018/1/20',
						'2018/1/21', '2018/1/22', '2018/1/23', '2018/1/24',
						'2018/1/25', '2018/1/26', '2018/1/27', '2018/1/28',
						'2018/1/29', '2018/1/30', '2018/2/1', '2018/2/2' ]
			},
			yAxis : {
				type : 'value',
				name:'',
				axisLabel : {
					formatter : '{value} kg'
				}
			},
			dataZoom : [ { // 这个dataZoom组件，默认控制x轴。
				type : 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
				start : 0, // 左边在 10% 的位置。
				end : 100
			// 右边在 60% 的位置。
			},{
	            type: 'slider',//y轴坐标放大
	            yAxisIndex: 0,
	            filterMode: 'empty'	
			} ],
			series : [
					{
						name : '红药',
						type : 'line',
						data : [ 10, 21, 25, 33, 42, 23, 20, 11, 23, 23, 45,
								90, 20, 30, 11, 23, 34, 45, 43, 67, 34, 34, 96,
								23, 23, 56, 34, 28, 30, 32, 42, 20 ],
						markPoint : {
							data : [ {
								type : 'max',
								name : '最大值'
							}, {
								type : 'min',
								name : '最小值'
							} ]
						},
						markLine : {
							data : [ {
								type : 'average',
								name : '平均值'
							} ]
						}
					}, {
						name : '白药',
						type : 'line',
						data : [ 13, 25, 15, 23, 32, 43, 20, ],
						markPoint : {
							data : [ {
								type : 'max',
								name : '最大值'
							}, {
								type : 'min',
								name : '最小值'
							} ]
						},
						markLine : {
							data : [ {
								type : 'average',
								name : '平均值'
							} ]
						}
					}, {
						name : '黄药',
						type : 'line',
						data : [ 63, 75, 55, 67, 33, 42, 31 ],
						markPoint : {
							data : [ {
								type : 'max',
								name : '最大值'
							}, {
								type : 'min',
								name : '最小值'
							} ]
						},
						markLine : {
							data : [ {
								type : 'average',
								name : '平均值'
							} ]
						}
					}, {
						name : '泥沙',
						type : 'line',
						data : [ 33, 85, 25, 77, 43, 62, 39 ],
						markPoint : {
							data : [ {
								type : 'max',
								name : '最大值'
							}, {
								type : 'min',
								name : '最小值'
							} ]
						},
						markLine : {
							data : [ {
								type : 'average',
								name : '平均值'
							} ]
						}
					} ]
		};