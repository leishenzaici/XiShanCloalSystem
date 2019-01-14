<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- "数据管理--相关性分析"的页面 -->
<html>
<head>
<!-- 编码方式 -->
<meta charset="utf-8">
<!-- 适配各种频幕 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 标题 -->
<title>相关性分析</title>
<!-- Bootstrap CSS -->
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap-theme.css"
	rel="stylesheet">
<!-- 表格的样式，自定义的CSS -->
<link href="${pageContext.request.contextPath}/css/table.css"
	rel="stylesheet">
<!-- 引入 ECharts 文件 -->
<script src="${pageContext.request.contextPath}/js/echarts.js"></script>

<!-- 表格排序和ztree要引用jQuery库 -->
<script type="text/javascript"
	src='${pageContext.request.contextPath}/js/jquery-1.11.3.min.js'></script>
<!-- 表格排序的js -->
<script type="text/javascript"
	src='${pageContext.request.contextPath}/js/table.js'></script>
<!-- 表格图片和筛选框的样式的样式，自定义的CSS -->
<link href="${pageContext.request.contextPath}/css/sortCondi.css"
	rel="stylesheet">
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
<link href="${pageContext.request.contextPath}/css/zTreeStyle.css"
	rel="stylesheet">
<!-- 引入zTree的官方js文件 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.ztree.core.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.ztree.excheck.js"></script>
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
			}
		},
		callback : {
			onClick : zTreeOnClick
		}
	};

	var zNodes = [ {
		"id" : 0,

		"name" : "选择单位",
		"open" : true
	}, {

		"id" : 2,
		"pId" : 0,
		"name" : "一分厂"
	}, {
		"id" : 3,
		"pId" : 0,
		"name" : "二分厂"
	} ];

	var code;
	var totalData;
	var plantID = '1';
	var indexlength;
	//全局变量记录树的id
	var planName;
	//分页全局变量
	var pageSize = 10;//每页显示多少条记录
	//zTree点击事件
	function zTreeOnClick(event, treeId, treeNode) {
		var obj = document.getElementById("pagerNum");
		obj.innerHTML="";
		plantID = treeNode.id;
		planName = treeNode.name;
		if (typeof (currentPageStr) == "undefined") {
			currentPageStr = '1';
		}
		//清空table
		$("#tableSort tbody").html('');
		$("#pageadd").html('');
		//获取开始和结束查询时间  
		var startTime = $('#startTime').val();
		var endTime = $('#endTime').val();
		if (startTime == "" || startTime == null) {
			startTime = "2000-1-1"
		}
		if (endTime == "" || endTime == null) {
			endTime = "2999-12-12"
		}
		//展示图表
		$.post("/XiShanCloalSystem/analysis/selectByPlantID", {
			"option" : JSON.stringify(option),
			"plantID" : plantID,
			"startTime" : startTime,
			"endTime" : endTime
		}, function(data) {
			var myChart = echarts.init(document.getElementById('main'));
			myChart.setOption(data, true)
		});
		pagehelper();
		

	}
	
	
	function pagehelper(currentPageStr){
		if (typeof (currentPageStr) == "undefined") {
			currentPageStr = '1';
		}
		var obj = document.getElementById("pagerNum");
		obj.innerHTML="";
		if (typeof (currentPageStr) == "undefined") {
			currentPageStr = '1';
		}
		//清空table
		$("#tableSort tbody").html('');
		$("#pageadd").html('');
		//获取开始和结束查询时间  
		var startTime = $('#startTime').val();
		var endTime = $('#endTime').val();
		if (startTime == "" || startTime == null) {
			startTime = "2000-1-1"
		}
		if (endTime == "" || endTime == null) {
			endTime = "2999-12-12"
		}
		//展示基础值
		 $.post("/XiShanCloalSystem/analysis/selectBasicMessage", {
				"plantID" : plantID,
				"startTime" : startTime,
				"endTime" : endTime,
				"pageNumber" : currentPageStr,
				"pageSize" : pageSize
				
			}, function(data) {
				//数据总页数
				var pagerToatal = data.pagerToatal;
				//数据总条数
				var totalCount = data.totalCount;
				var sortStart = (currentPageStr - 1) * pageSize
						+ 1;
				var sort = (currentPageStr - 1) * pageSize + 1;
				
				for (var i = 0; i < data.list.length; i++) {//循环最外面的数组
					var ht = "<tr>";
					ht += "<td>" + (sort++) + "</td>"
					ht += "<td>" + planName + "</td>"
					ht += "<td>"
							+ formatDate(data.list[i].time)
							+ "</td>";
					
					ht += "<td>" + data.list[i].codcrWaste+ "</td>";
					ht += "<td>" + data.list[i].codcrSewage+ "</td>";
					ht += "<td>" + data.list[i].codcrOut+ "</td>";
					ht += "<td>" + data.list[i].codcrAnalyze+ "</td>";
					ht += "<td>" + data.list[i].ssWaste+ "</td>";
					ht += "<td>" + data.list[i].ssSewage+ "</td>";
					ht += "<td>" + data.list[i].ssOut+ "</td>";
					ht += "<td>" + data.list[i].ssAnalyze+ "</td>";
	/* 				ht += "<td>" + data.list[i].userName+ "</td>";
					ht += "<td><button class=\"btn btn-info btn-sm\" onclick=\"openDialog('"
							+ data.list[i].uuid
							+ "')\">修改</button></td>";  */
					ht += "</tr>";
					$("#tableSort tbody").append(ht);
				}
				var obj = document.getElementById("pagerNum");
				obj.innerHTML = "显示第" + sortStart + "条到第"
						+ (sort - 1) + "条记录，总共" + totalCount
						+ "条记录!";

				var pagehtml = "<li><a href=\"javascript:void(0);\"onclick=\"pagehelper()\">首页</a></li>";
				var pagenum = 1;//分页码
				for (var i = 0; i < pagerToatal; i++) {
					//当前页高亮判断
					if (currentPageStr == (i + 1)) {
						pagehtml += "<li class=\"active\"><a href=\"javascript:void(0);\"onclick=\"pagehelper("
								+ pagenum
								+ ")\">"
								+ pagenum
								+ "</a></li>";
					} else {
						pagehtml += "<li><a href=\"javascript:void(0);\"onclick=\"pagehelper("
								+ pagenum
								+ ")\">"
								+ pagenum
								+ "</a></li>";
					}
					pagenum++;
				}
				pagehtml += "<li><a href=\"javascript:void(0);\"onclick=\"pagehelper("
						+ pagerToatal + ")\">尾页</a></li>";
				$("#pageadd").append(pagehtml);
		
	});
	}
	
	//时间戳转换
	function add0(m) {
		return m < 10 ? '0' + m : m
	}
	function formatDate(timestamp) {
		//timestamp是整数，否则要parseInt转换
		var time = new Date(timestamp);
		var y = time.getFullYear();
		var m = time.getMonth() + 1;
		var d = time.getDate();
		var h = time.getHours();
		var mm = time.getMinutes();
		var s = time.getSeconds();
		return y + '-' + add0(m) + '-' + add0(d) + ' ' + add0(h) + ':'
				+ add0(mm) + ':' + add0(s);
	}

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
	var treeObj
	$(document).ready(
			function() {
				$.post("/XiShanCloalSystem/plant/getPlantList", null, function(
						result) {
					var treeObj = $.fn.zTree.init($("#treeDemo"), setting,
							result);
					var node = treeObj.getNodeByParam('id', 1);
					treeObj.selectNode(node);
					treeObj.setting.callback.onClick(null,
							treeObj.setting.treeId, node);//调用事件

				});
				setCheck();
				$("#py").bind("change", setCheck);
				$("#sy").bind("change", setCheck);
				$("#pn").bind("change", setCheck);
				$("#sn").bind("change", setCheck);
			});

</script>
</head>
<body>
	<!-- 标题 -->
	<div style="background-color: #F5F5F5; padding: 2PX;">
		<h4>&nbsp;&nbsp;&nbsp;&nbsp;相关性分析</h4>
	</div>
	<!-- 关于jumbotron：为了获得占用全部宽度且不带圆角的超大屏幕，请在所有的 .container class 外使用 .jumbotron class -->
	<div style="padding-top: 48px; padding-left: 30px;padding-right: 30px;">
		<!-- 此处插入折线图或者是柱状图 -->
		<table style="width: 100%;">
			<tr>
				<td>
					<!-- 筛选框 -->
					<div class="condition">
						<table>
							<tr>
								<td>时间：</td>
								<td style="text-align: left;"><input class="input"
									id="startTime" type="date">-<input class="input"
									id="endTime" type="date"></td>
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
						style="display: inline-block; width: 800px; height: 400px;"></div>
				</td>
			</tr>
		</table>
		<!-- 标题下面一个表格，显示数据图相关的数据 -->
		<table class="table table-hover table-bordered"
			summary="user infomation table" id="tableSort"
			style="width: 100%; padding-left: 40px;">
			<!-- 第一行，一系列属性 -->
			<thead>
				<tr>
					<th  width="4%">编号&nbsp;<i></th>
					<th width="6%">分厂&nbsp;<i></th>
					<th  width="6%">时间&nbsp;<i></th>
					<th  width="12%">COD进水（矿井废水）(mg/L)&nbsp;<i></th>
					<th width="12%">COD进水（生活污水）(mg/L)&nbsp;<i></th>
					<th width="10%">CODcr出水(mg/L)&nbsp;<i></th>
					<th  width="10%">CODcr分析值(%)&nbsp;<i></th>
					<th  width="10%">SS进水（矿井废水）(mg/L)&nbsp;<i></th>
					<th width="10%">SS进水（生活污水）(mg/L)&nbsp;<i></th>
					<th  width="10%">SS出水(mg/L)&nbsp;<i></th>
					<th  width="10%">SS分析值(%)&nbsp;<i></th>
					<!-- <th onclick="$.sortTable.sort('tableSort',10)"
						style="cursor: pointer;">&nbsp;录入人&nbsp;<i
						class="glyphicon glyphicon-sort"></th> -->
				</tr>
			</thead>
			<tbody>
			</tbody>

		</table>
		<p align="left" id="pagerNum">显示第1条到第2条记录，总共2条记录</p>
		<!--分页功能-->
		<nav aria-label="Page navigation">
			<!-- 分页插件 -->
			<ul class="pagination" id="pageadd">

			</ul>
		</nav>

	</div>
	<!--关于e-charts的js-->
	<script type="text/javascript">
		// 基于准备好的dom，初始化echarts实例
		var myChart = echarts.init(document.getElementById('main'));

		// 指定图表的配置项和数据
		option = {
			title : {
				text : '西山煤电相关性分析',
				x:'center',
				y:-80
			},
			tooltip : {
				trigger : 'axis'
			},
			legend : {
				show:true,
		        orient:'horizontal',
		        x:'left',
				data : []
			},
			toolbox : {//右侧图标
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
				data : []
			},
			yAxis : {
				type : 'value',
				name:'单位%',
				axisLabel : {
					formatter : '{value} %'
				}
			},
			dataZoom : [ { // 这个dataZoom组件，默认控制x轴。
				type : 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
				start : 0, // 左边在 10% 的位置。
				end : 100
			// 右边在 60% 的位置。
			},
			{
	            type: 'slider',//y轴坐标放大
	            yAxisIndex: 0,
	            filterMode: 'empty'
	            }],
			series : [
					{
						name : 'COD',
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

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	</script>
</body>
</html>

