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
	//zTree点击事件
	function zTreeOnClick(event, treeId, treeNode) {
		plantID = treeNode.id;
		/*   $.post("/XiShanCloalSystem/catData/jsonUpadte",{"option":JSON.stringify(option),"plantID":plantID},function(data){
		  var myChart = echarts.init(document.getElementById('main'));
			  myChart.setOption(data,true)
			 
		  }); */

		//获取开始和结束查询时间  
		var startTime = $('#startTime').val();
		var endTime = $('#endTime').val();
		if (startTime == "" && endTime != "") {
			alert("请选择开始时间");
			return false;
		}

		if (startTime != "" && endTime == "") {
			alert("请选择结束时间");
			return false;
		}
		if (startTime == "" && endTime == "") {

			$.post("/XiShanCloalSystem/catData/jsonUpadte", {
				"option" : JSON.stringify(option),
				"plantID" : plantID
			}, function(data) {
				var myChart = echarts.init(document.getElementById('main'));
				myChart.setOption(data, true)

			});
		} else {
			$.post("/XiShanCloalSystem/catData/jsonUpadte", {
				"option" : JSON.stringify(option),
				"plantID" : plantID,
				"startTime" : startTime,
				"endTime" : endTime
			}, function(data) {
				var myChart = echarts.init(document.getElementById('main'));
				myChart.setOption(data, true)

			});
		}

		//清空table
		$("#tableSort thead").html('');
		$("#tableSort tbody").html('');
		//获取开始和结束查询时间  
		/*  var startTime=$('#startTime').val();
		 var endTime=$('#endTime').val(); */
		//建立二维数组存档表格数据
		var arr = new Array();
		var plantname;
		//获取开始和结束查询时间  
		var startTime = $('#startTime').val();
		var endTime = $('#endTime').val();
		//追加表头
		$
				.post(
						"/XiShanCloalSystem/catData/selectIndexNameByPlantID",
						{
							"plantID" : treeNode.id,
							"startTime" : startTime,
							"endTime" : endTime
						},
						function(data) {

							//$("#unit").html('&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单位：'+data[0].unit);
							totaldata = data
							var html = '<tr>';
							html += "<th onclick=\"$.sortTable.sort('tableSort',0)\"style=\"cursor: pointer;\">编号&nbsp;<iclass=\"glyphicon glyphicon-sort\"></th><th onclick=\"$.sortTable.sort('tableSort',1)\"style=\"cursor: pointer;\">分厂&nbsp;<iclass=\"glyphicon glyphicon-sort\"></th>";
							for (var i = 0; i < data.length; i++) {
								html += "<th onclick=\"$.sortTable.sort('tableSort',0)\"style=\"cursor: pointer;\">"
										+ data[i].indexname
										+ "("
										+ data[i].unit
										+ ")&nbsp;<iclass=\"glyphicon glyphicon-sort\"></th>"
							}
							html += '<th onclick=\"$.sortTable.sort(\'tableSort\',1)\"style=\"cursor: pointer;\">时间&nbsp;<iclass=\"glyphicon glyphicon-sort\"></th>'
							html += '</tr>'
							html += '<tr><th>0</th><th>合计</th>';
							for (var i = 0; i < data.length; i++) {
								html += '<th>' + data[i].sum + '</th>';
							}
							html += '<th>' + startTime + '——' + endTime
									+ '</th></tr>';
							$("#tableSort thead").append(html);
							totalData = data;
							indexlength = data.length
							//分页表体
							pagehelper();
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
	function pagehelper(currentPageStr) {
		if (typeof (currentPageStr) == "undefined") {
			currentPageStr = '1';
		}
		$("#pageadd").html('');
		//清空table
		$("#tableSort tbody").html('')
		//获取开始和结束查询时间  
		var startTime = $('#startTime').val();
		var endTime = $('#endTime').val();
		//建立二维数组存档表格数据
		var arr = new Array();
		var plantname;
		//编号
		var sort = 0;
		var num = 1;
		var length;
		var flag = 0
		//获取表体数据
		$
				.post(
						"/XiShanCloalSystem/catData/selectPagebeanByPlantID",
						{
							"indexlength" : indexlength,
							"startTime" : startTime,
							"endTime" : endTime,
							"plantID" : plantID,
							"currentPageStr" : currentPageStr
						},
						function(result) {

							arr[totalData.length] = new Array();
							for (var i = 0; i < totalData.length; i++) {
								arr[i] = new Array();
								flag = 0;
								for (var j = 0; j < result.list.length; j++) {
									if (plantname == null) {
										plantname = result.list[j].plantName;
									}
									if (totalData[i].indexid == result.list[j].indexid) {
										arr[i][flag] = result.list[j].indexnumber;
										arr[totalData.length][flag] = formatDate(result.list[j].date);
										//date('Y-m-d H:i:s',result.list[j].date);//result.list[j].time;
										flag++;
									}
								}
							}
							var newArray = arr[0].map(function(col, i) {
								return arr.map(function(row) {
									return row[i];
								})
							});

							var htmltotal;
							sort = (currentPageStr - 1) * 10 + sort;//每页显示10行数据编号 
							for (var i = 0; i < newArray.length; i++) {//循环最外面的数组
								sort++;
								var ht = "<tr>"
								ht += "<td>" + sort + "</td>"
								ht += "<td>" + plantname + "</td>"
								for (var j = 0; j < newArray[i].length; j++) {//循环里面的数组
									ht += "<td>" + newArray[i][j] + "</td>"
								}
								ht += "</tr>"
								htmltotal += ht;
							}
							$("#tableSort tbody").append(htmltotal);
							var pagehtml = "<li><a href=\"javascript:void(0);\"onclick=\"pagehelper()\">首页</a></li>";
							var pagenum = 1;//分页码
							for (var i = 0; i < result.totalPage; i++) {
								//当前页高亮判断
								if (result.currentPage == (i + 1)) {
									pagehtml += "<li class=\"active\"><a href=\"javascript:void(0);\"onclick=\"pagehelper("
											+ pagenum
											+ ")\">"
											+ pagenum
											+ "</a></li>";
								} else
									pagehtml += "<li><a href=\"javascript:void(0);\"onclick=\"pagehelper("
											+ pagenum
											+ ")\">"
											+ pagenum
											+ "</a></li>";
								pagenum++;
							}
							pagehtml += "<li><a href=\"javascript:void(0);\"onclick=\"pagehelper("
									+ result.totalPage + ")\">尾页</a></li>";
							$("#pageadd").append(pagehtml);
						});
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
		<h4>&nbsp;&nbsp;&nbsp;&nbsp;查看数据</h4>
	</div>
	<!-- 关于jumbotron：为了获得占用全部宽度且不带圆角的超大屏幕，请在所有的 .container class 外使用 .jumbotron class -->
	<div style="padding-top: 48px; padding-left: 5px;padding-right: 5px;">
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
						style="display: inline-block; width: 720px; height: 420px;"></div>
				</td>
			</tr>
		</table>
		<!-- <span id="unit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单位：</span> -->

		<!-- 标题下面一个表格，显示数据图相关的数据 -->
		<table class="table table-hover table-bordered"
			summary="user infomation table" id="tableSort"
			style="width: 100%;">
			<!-- 第一行，一系列属性 -->
			<thead>
			</thead>
			<!-- 第二行，一些写死的数据，后面是根据传入数据进行输出，此处应有jsp代码 -->
			<tbody>
			</tbody>
		</table>
		<!-- 这里也是写死的数据，后期从后台获取数据，写jsp代码 -->
		<!-- <p>显示第1条到第2条记录，总共2条记录</p> -->
		<!--分页功能-->
		<nav aria-label="Page navigation" style="margin: 0px 0px;">
			<!-- 分页插件 -->
			<ul class="pagination" id="pageadd" >
			</ul>
		</nav>
	</div>
	<!--关于e-charts的js-->
	<script type="text/javascript">
		
	</script>
</body>
</html>

