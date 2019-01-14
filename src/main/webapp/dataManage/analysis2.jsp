<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- "数据管理--查看数据"的页面 -->
<html>
<head>
<!-- 编码方式 -->
<meta charset="utf-8">
<!-- 适配各种频幕 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 标题 -->
<title>查看数据</title>
<!-- Bootstrap CSS -->
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet">
<!-- 表格的样式，自定义的CSS -->
<link href="${pageContext.request.contextPath}/css/table.css" rel="stylesheet">
<!-- 引入 ECharts 文件 -->
<script src="${pageContext.request.contextPath}/js/echarts.js"></script>

<!-- 表格排序和ztree要引用jQuery库 -->
<script type="text/javascript" src='${pageContext.request.contextPath}/js/jquery-1.11.3.min.js'></script>
<!-- 表格排序的js -->
<script type="text/javascript" src='${pageContext.request.contextPath}/js/table.js'></script>
<!-- 表格图片和筛选框的样式的样式，自定义的CSS -->
<link href="${pageContext.request.contextPath}/css/sortCondi.css" rel="stylesheet">
<!-- ztree初始化js -->
<script src="${pageContext.request.contextPath}/js/showdata.js"></script>
<!--清空数据的js-->
<script type="text/javascript">
	$(document).ready(function() {
		$(function() {
			$('input:reset').click(function() {
				$('.input').val("");
				$("input[type='checkbox']").removeAttr('checked');
			});
		});
	});
</script>
<!-- 引入zTree的官方css文件 -->
<link href="${pageContext.request.contextPath}/css/zTreeStyle.css" rel="stylesheet">
<!-- 引入zTree的官方js文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.ztree.core.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.ztree.excheck.js"></script>
<!-- zTree的样式，zTree部分的框 -->
<style type="text/css">
ul.ztree {
	margin-top: 10px;
	margin-bottom: 10px;
	border: 1px solid #617775;
	background: #ffffff;
	width: 270px;
	height: 300px;
	overflow-y: scroll;
	overflow-x: auto;
}
</style>
<!-- 本页面zTree的内容 -->
<script type="text/javascript">
	var setting = {
		data : {
			simpleData : {
				enable : true
			} ,
			callback: {
				onClick: zTreeOnClick
			}
		}
	};

	var zNodes = [ {
		id : 1,
		pId : 0,
		name : "选择单位",
		open : true
	}, {
		id : 11,
		pId : 1,
		name : "一分厂"
	}, {
		id : 12,
		pId : 1,
		name : "二分厂"
	}, {
		id : 13,
		pId : 1,
		name : "三分厂"
	}, {
		id : 14,
		pId : 1,
		name : "四分厂"
	}, {
		id : 15,
		pId : 1,
		name : "五分厂"
	}, {
		id : 16,
		pId : 1,
		name : "六分厂"
	} ];
	/*树结构  */
	var code;
	var plantID;

	function setCheck() {
		var zTree = $.fn.zTree.getZTreeObj("treeDemo"), py = $("#py").attr(
				"checked") ? "p" : "", sy = $("#sy").attr("checked") ? "s" : "", pn = $(
				"#pn").attr("checked") ? "p" : "", sn = $("#sn")
				.attr("checked") ? "s" : "", type = {
			"Y" : py + sy,
			"N" : pn + sn
		};
		zTree.setting.check.chkboxType = {
			"Y" : "ps",
			"N" : "ps"
		};
		showCode('setting.check.chkboxType = { "Y" : "' + type.Y + '", "N" : "'
				+ type.N + '" };');
	}
	function showCode(str) {
		if (!code)
			code = $("#code");
		code.empty();
		code.append("<li>" + str + "</li>");
	}

	$(document).ready(
			function() {
				//显示机构树
				$.post("/XiShanCloalSystem/plant/getPlantList", null, function(
						result) {

					var treeObj = $.fn.zTree.init($("#treeDemo"), setting,
							result);
					var node = treeObj.getNodeByParam('id', 1);
					treeObj.selectNode(node);
					treeObj.setting.callback.onClick(null,treeObj.setting.treeId, node);///调用事件
				});
				//$.fn.zTree.init($("#treeDemo"), setting, zNodes);
				setCheck();
				$("#py").bind("change", setCheck);
				$("#sy").bind("change", setCheck);
				$("#pn").bind("change", setCheck);
				$("#sn").bind("change", setCheck);
			});
	
	//zTree点击事件
	function zTreeOnClick(event, treeId, treeNode) {
		alert("123456");
		 plantID=treeNode.id;
		//清空table
		 $("#main").html('');
		//获取开始和结束查询时间  
		 var startTime=$('#startTime').val();
		 var endTime=$('#endTime').val();
		 plantID=treeNode.id;
		  $.post("/XiShanCloalSystem/analysis/selectByPlantID",{"option":JSON.stringify(option),"plantID":plantID,"startTime":startTime,"endTime":endTime},function(data){
		  		alert(startTime);
		  		alert(data);
			  var myChart = echarts.init(document.getElementById('main'));
			  myChart.setOption(data,true)
			 
		  });
	}
</script>
</head>
<body>
	<!-- 标题 -->
	<div style="background-color: #F5F5F5; padding: 2PX;">
		<h4>&nbsp;&nbsp;&nbsp;&nbsp;相关性分析</h4>
	</div>
	<!-- 关于jumbotron：为了获得占用全部宽度且不带圆角的超大屏幕，请在所有的 .container class 外使用 .jumbotron class -->
	<table>
			<tr>
				<td>
					<!-- 筛选框 -->
					<div class="condition" style="padding-top:48px; padding-left:30px;">
						<table>
							<tr>
								<td>时间：</td>
								<td style="text-align: left;"><input class="input"
									id="startTime" type="date">-<input class="input" id="endTime"  type="date"></td>
							</tr>
							<tr>
								<td>分厂：</td>
								<td style="text-align: left;">
									<!-- ztree部分 -->
									<ul id="treeDemo" class="ztree"></ul>
								</td>
							</tr>
						</table>
					</div>
				</td>
				<td>
					<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
					<div id="main"
						style="display: inline-block; width: 600px; height: 400px;"></div>
				</td>
			</tr>
		</table>
		<!--关于e-charts的js-->
	<script type="text/javascript">
		// 基于准备好的dom，初始化echarts实例
		var myChart = echarts.init(document.getElementById('main'));

		// 指定图表的配置项和数据
		option = {
			title : {
				text : '数据分析',
				subtext : ''
			},
			tooltip : {
				trigger : 'axis'
			},
			legend : {
				data : [ 'COD', 'SS' ]
			},
			toolbox : {
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
				axisLabel : {
					formatter : '{value} %'
				}
			},
			dataZoom : [ { // 这个dataZoom组件，默认控制x轴。
				type : 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
				start : 0, // 左边在 10% 的位置。
				end : 100
			// 右边在 60% 的位置。
			} ],
			series : [
					{
						name : 'COD',
						type : 'line',
						data : [ 10, 21, 25, 33, 42, 23, 20, 11, 23, 23, 45,
								90, 20, 30, 11, 23, 34, 45, 43, 67, 34, 34, 96,
								23, 23, 56, 34, 28, 30, 34, 45, 88, 12 ],
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
					},
					{
						name : 'SS',
						type : 'line',
						data : [ 13, 25, 15, 23, 32, 43, 20, 30, 11, 23, 34,
								45, 43, 34, 28, 30, 20, 11, 23, 90, 21, 32, 11,
								23, 23, 56, 34, 23, 23, 12, 34, 65, 34 ],
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

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	</script>
</body>
</html>
