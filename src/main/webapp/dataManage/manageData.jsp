<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- "数据管理--数据管理"的页面 -->
<html>
<head>
<!-- 编码方式 -->
<meta charset="utf-8">
<!-- 适配各种频幕 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 标题 -->
<title>管理数据</title>
<!-- Bootstrap CSS -->
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap-theme.css"
	rel="stylesheet">
<!-- 关于表格的css，自己定义的css -->
<link href="${pageContext.request.contextPath}/css/table.css"
	rel="stylesheet">
<!-- 关于弹出框的css，自己定义的css -->
<link href="${pageContext.request.contextPath}/css/popOut.css"
	rel="stylesheet">
<!-- 表格排序的js，要引用jQuery库 -->
<script type="text/javascript"
	src='${pageContext.request.contextPath}/js/jquery-1.11.3.min.js'></script>
<!-- 表格的排序的样式 -->
<script type="text/javascript"
	src='${pageContext.request.contextPath}/js/table.js'></script>
<!-- 表格图片和筛选框的样式的样式，自定义的CSS -->
<link href="${pageContext.request.contextPath}/css/sortCondi.css"
	rel="stylesheet">
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
	height: 390px;
	overflow-y: scroll;
	overflow-x: auto;
}
</style>

</head>
<body>
	<!-- 标题 -->
	<div style="background-color: #F5F5F5; padding: 2PX;">
		<h4>&nbsp;&nbsp;&nbsp;&nbsp;管理数据</h4>
	</div>
	<div class='demo'>
		<!-- 整个body里面就这一个div -->
		<!-- 关于jumbotron：为了获得占用全部宽度且不带圆角的超大屏幕，请在所有的 .container class 外使用 .jumbotron class -->
		<div class="jumbotron">
			<div class="condition">
				<table>
					<tr>
						<!-- 左边分厂选择 -->
						<td>
							<!-- ztree部分 -->
							<ul id="treeDemo" class="ztree"></ul>
						</td>
						<!-- 右边内容部分 -->
						<td>
							<!-- 筛选框 -->
							<table class="table table-hover table-bordered" id="selectTable">
								<thead></thead>
								<tbody>
									<tr>
										<td>时间：</td>
										<td style="text-align: left;"><input type="date"
											id="startTime" class="input">-<input type="date"
											id="endTime" class="input"></td>
									</tr>
								</tbody>
							</table>
							<p align="left">
								<button class="btn btn-default btn-sm" onClick="selectMessage()">查询</button>
								&nbsp; <input value="清空" onClick="resetMessage()" type="reset"
									class="btn btn-sm btn-primary">
							</p> <!-- 筛选框一个表格，显示数据 -->
							<table class="table table-hover table-bordered"
								summary="user infomation table" id="tableSort">
								<!-- 第一行，一系列属性 -->
								<thead>
									<tr class="tab-head">

									</tr>
								</thead>
								<tbody>
								</tbody>
							</table> <!-- 按钮 --> <!-- <p align="left">
								<button class="btn btn-warning btn-sm">全部删除</button>
								这里也是写死的数据，后期从后台获取数据，写jsp代码
								<span>&nbsp;&nbsp;&nbsp;显示第1条到第2条记录，总共2条记录</span>
							</p> 这里也是写死的数据，后期从后台获取数据，写jsp代码 -->
							<p align="left" id="pagerNum">显示第1条到第2条记录，总共2条记录</p> <!--分页功能-->
							<nav aria-label="Page navigation">
								<!-- 分页插件 -->
								<ul class="pagination" id="pageadd">

								</ul>
							</nav>
						</td>
					</tr>

				</table>

			</div>

		</div>
		<div class='demo-bg'></div>
		<!--弹出框的内容在下面这个div里增加即可,写个z-tree吧-->
		<div class='demo-txt' id="dialog1">
			<button id="btn" class="btn" onclick="closeDialog()">关闭</button>
			<div style="width: 80%; margin-left: 10%;">
				<h3>修改数据</h3>
				<hr />
				<div class="form-group row form-inline">
					<label class="col-sm-3">时间</label> <input class="form-control"
						type="date" style="display: inline-block;"><input
						class="form-control" type="time" style="display: inline-block;">
				</div>
				<div class="form-group row form-inline">
					<label class="col-sm-3">水量(kg)</label> <input class="form-control"
						type="text" style="display: inline-block;">
				</div>
				<div class="form-group row form-inline">
					<label class="col-sm-3">红药(kg)</label> <input class="form-control"
						type="text" style="display: inline-block;">
				</div>
				<div class="form-group row form-inline">
					<label class="col-sm-3">白药(kg)</label> <input class="form-control"
						type="text" style="display: inline-block;">
				</div>
				<div class="form-group row form-inline">
					<label class="col-sm-3">泥沙(kg)</label> <input class="form-control"
						type="text" style="display: inline-block;">
				</div>
				<button class="btn btn-primary">提交</button>
			</div>
		</div>
	</div>
	<!-- 本页面zTree的内容 -->
	<script type="text/javascript">
		var setting = {
			/* check : {
				enable : true
			},
			//这段代码说明了CheckBox是否显示
			 */
			data : {
				simpleData : {
					enable : true
				}
			},
			callback : {
				//树的点击事件
				onClick : zTreeOnClick
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
		//全局变量记录树的id
		var treeNodeId;
		var planName;

		//分页全局变量
		var pageSize = 10;//每页显示多少条记录
		var num;
		var indexlength;
		//机构树
		function zTreeOnClick(event, treeId, treeNode) {
			if (treeNode.id == null) {
				treeNode.id = 1;
			}
			var obj = document.getElementById("pagerNum");
			obj.innerHTML = "";
			//追加查询条件
			treeNodeId = treeNode.id;
			planName = treeNode.name;

			$("#selectTable tbody").html('');
			
			$
					.post(
							"/XiShanCloalSystem/managedata/selectByINID",
							{
								"plantID" : treeNodeId
							},
							function(data) {
								indexLength = data.length
								var htmltotal;
								htmltotal = "<tr>"
								htmltotal += "<td>时间：</td>"
								htmltotal += "<td style=\"text-align: left;\"><input type=\"date\""
			  htmltotal+="id=\"startTime\" class=\"input\">-<input type=\"date\"  id=\"endTime\"";
			  htmltotal+="class=\"input\"></td>"
								htmltotal += "</tr>"
								num = data.length;
								for (var i = 0; i < data.length; i++) {
									var ht = "<tr>"
									ht += "<td>" + data[i].indexname + "("
											+ data[i].unit + ")" + "</td>"
									ht += "<td style=\"text-align: left;\"><input name='testMin"+i+"' type=\"text\" value=\"0\" class=\"input\" id=\""+data[i].indexid+"min\">-<input name='testMax"+i+"' type=\"text\" value=\"100000\" class=\"input\" id=\""+data[i].indexid+"max\"></td>"
									ht += "</tr>"
									htmltotal += ht;
								}
								$("#selectTable tbody").append(htmltotal);
								pagehelper();
							});

			//根据工厂id查询数据 
			//清空table
			$("#tableSort thead").html('');
			$("#tableSort tbody").html('');
			$("#pageadd").html('');
			//建立二维数组存档表格数据
			var totalData;
			var arr = new Array();
			var plantname;
			var username;
			var time;
			var sortNumber = 0;
			var flag = 0
			//追加表头
			$
					.post(
							"/XiShanCloalSystem/managedata/selectByINID",
							{
								"plantID" : treeNodeId
							},
							function(data) {
								
								totalData = data;
								indexlength = data.length;
								var html = '<tr class="tab-head">';
								html += "<th >编号&nbsp;</th>";
								html += "<th >分厂&nbsp;</th>";

								for (var i = 0; i < data.length; i++) {
									html += "<th> "
											+ data[i].indexname
											+ "("
											+ data[i].unit
											+ ")"
											+ "</th>"
								}
								html += "<th >时间</th>";
								html += '<th>录入人</th>'
								html += '<th>录入时间</th>'
								html += '<th>操作</th>'
								html += '</tr>'
								$("#tableSort thead").append(html);
							});
			//追加表体
			if (typeof (currentPageStr) == "undefined") {
				currentPageStr = '1';
			}

		}

		function setCheck() {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"), py = $("#py").attr(
					"checked") ? "p" : "", sy = $("#sy").attr("checked") ? "s"
					: "", pn = $("#pn").attr("checked") ? "p" : "", sn = $(
					"#sn").attr("checked") ? "s" : "", type = {
				"Y" : py + sy,
				"N" : pn + sn
			};
			zTree.setting.check.chkboxType = {
				"Y" : "ps",
				"N" : "ps"
			};
			showCode('setting.check.chkboxType = { "Y" : "' + type.Y
					+ '", "N" : "' + type.N + '" };');
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
					$.post("/XiShanCloalSystem/plant/getPlantList", null,
							function(result) {

								var treeObj = $.fn.zTree.init($("#treeDemo"),
										setting, result);
								var node = treeObj.getNodeByParam('id', 1);
								treeObj.selectNode(node);
								treeObj.setting.callback.onClick(null,
										treeObj.setting.treeId, node);//调用事件
							});
					//$.fn.zTree.init($("#treeDemo"), setting, zNodes);
					setCheck();
					$("#py").bind("change", setCheck);
					$("#sy").bind("change", setCheck);
					$("#pn").bind("change", setCheck);
					$("#sn").bind("change", setCheck);
				});
		//清空
		function resetMessage() {
			for (var i = 0; i < num; i++) {
				$("input[name='testMin" + i + "']").val("");
				$("input[name='testMax" + i + "']").val("");
			}
		}
		//查询
		function selectMessage() {
			//工厂id
			var palnId = treeNodeId;
			//获取开始和结束查询时间  
			var startTime = $('#startTime').val();
			var endTime = $('#endTime').val();
			//拼接字符串，将值传入到后台，然后处理进行查询  最大最下值
			var selectMessage = "";
			for (var i = 0; i < num; i++) {
				var a = '0';
				var b = '999999';
				a = $("input[name='testMin" + i + "']").val();
				b = $("input[name='testMax" + i + "']").val();
				if (a == '') {
					a = 0;
				}
				if (b == '') {
					b = 9999999;
				}
				selectMessage += a + "," + b + ";";
			}
			//清空table
			$("#tableSort thead").html('');
			$("#tableSort tbody").html('');
			//追加表头
			//alert("查询" + selectMessage);
			$
					.post(
							"/XiShanCloalSystem/managedata/selectByINID",
							{
								"plantID" : palnId
							},
							function(data) {
								
								
								var html = '<tr class="tab-head">';
								html += "<th >编号&nbsp;</th>";
								html += "<th >分厂&nbsp;</th>";
							
								for (var i = 0; i < data.length; i++) {
									html += "<th> "
											+ data[i].indexname
											+ "("
											+ data[i].unit
											+ ")"
											+ "</th>"
								}
								html += "<th>时间</th>";
								html += '<th>录入人</th>'
								html += '<th>录入时间</th>'
								html += '<th>操作</th>'
								html += '</tr>'
								$("#tableSort thead").append(html);
							});
			pagehelper();
		}

		function pagehelper(currentPageStr) {
			if (typeof (currentPageStr) == "undefined") {
				currentPageStr = '1';
			}
			var palnId = treeNodeId;
			//获取开始和结束查询时间  
			var startTime = $('#startTime').val();
			var endTime = $('#endTime').val();
			//拼接字符串，将值传入到后台，然后处理进行查询  最大最下值
			var selectMessage = "";

			for (var i = 0; i < num; i++) {
				var a = $("input[name='testMin" + i + "']").val();
				var b = $("input[name='testMax" + i + "']").val();
				if (a == '' || typeof (a) == "undefined") {
					a = 0;
				}
				if (b == '' || typeof (b) == "undefined") {
					b = 9999999;
				}
				selectMessage += a + "," + b + ";";
			}
			$("#tableSort tbody").html('');
			$("#pageadd").html('');
			//alert(selectMessage);
			$
					.post(
							"/XiShanCloalSystem/managedata/selectMessageByMGPager",
							{
								"plantID" : palnId,
								"startTime" : startTime,
								"endTime" : endTime,
								"selectMessage" : selectMessage,
								"pageNumber" : currentPageStr,
								"pageSize" : pageSize
							},
							function(data) {
								//数据总页数
								var pagerToatal = data.pagerToatal;
								//数据总条数
								var totalCount = data.totalCount;
								var sortStart = (currentPageStr - 1) * pageSize
										+ 1;
								var sort = (currentPageStr - 1) * pageSize + 1;
								for (var i = 0; i < data.list.length; i++) {//循环最外面的数组
									var ht = "<tr>"
									//ht+="<td><input type=\"checkbox\"></td>"
									ht += "<td>" + (sort++) + "</td>"
									ht += "<td>" + data.list[i].plantname + "</td>"
									for (var j = 0; j < data.list[i].indexnumber.length; j++) {//循环里面的数组
										ht += "<td>" + data.list[i].indexnumber[j]
												+ "</td>"
									}
									ht += "<td>"+data.list[i].time + "</td>";
									ht += "<td>"+data.list[i].username + "</td>";
									var dataId = data.list[i].dataid;
									ht += "<td>"
											+ formatDateTime(data.list[i].date)
											+ "</td>";
									ht += "<td><button class=\"btn btn-info btn-sm\" onclick=\"openDialog('"
											+ data.list[i].dataid
											+ "')\">修改</button></td>";
									/*ht+="<button class=\"btn btn-warning btn-sm\" onclick=\"dataDelete()\">删除</button></td>";	 */
									ht += "</tr>"
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
		//时间戳处理
		function add0(m) {
			return m < 10 ? '0' + m : m
		}
		function formatDateTime(timestamp) {
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
		};
		//修改数据
		var demobg = document.querySelector(".demo-bg");
		var demotxt = document.querySelector(".demo-txt");
		function openDialog(dataId) {
			document.getElementById('dialog1').innerHTML = '';
			var palnId = treeNodeId;
			$
					.post(
							"/XiShanCloalSystem/managedata/updateMessagePager",
							{
								"plantId" : palnId,
								"dataId" : dataId
							},
							function(data) {
								$("#dialog1").val('');
								var pagehtml = "<button id=\"btn\" class=\"btn\" onclick=\"closeDialog()\">关闭</button>";
								pagehtml += "<div style=\"width: 80%; margin-left: 10%;\">";
								//pagehtml += "<h3 style=\"text-align:center\">修改数据</h3>";
								pagehtml += "<h3>修改数据</h3>";
								pagehtml += "<hr />";
								for (var i = 0; i < data.length; i++) {
									pagehtml += "<div class=\"form-group row form-inline\">";
									pagehtml += "<label class=\"col-sm-3\">"
											+ data[i].key
											+ "(kg)</label> <input class=\"form-control\" name=\""+data[i].key +"\"";
				 				pagehtml+="type=\"text\" style=\"display: inline-block;\" value=\""+data[i].value+"\" >";
									pagehtml += "</div>";
								}
								pagehtml += "<button class=\"btn btn-primary\"  onclick=\"updateMessage('"
										+ dataId + "')\">提交</button> ";
								pagehtml += "</div>";
								$("#dialog1").append(pagehtml);

							});

			demotxt.style.display = "block";
			demobg.style.display = "block";

		}
		function updateMessage(dataId) {
			var plantId = treeNodeId;
			var updateMessage = "";
			$.post("/XiShanCloalSystem/managedata/updateMessagePager", {
				"plantId" : plantId,
				"dataId" : dataId
			}, function(data) {
				for (var i = 0; i < data.length; i++) {
					var str = $("input[name='" + data[i].key + "']").val();
					if (str == '') {
						alert("不能空");
						return false;
					}
					updateMessage += str + ",";
				}
				$.post("/XiShanCloalSystem/managedata/updateMessage", {
					"plantId" : plantId,
					"dataId" : dataId,
					"updateMessage" : updateMessage
				}, function(result) {
					if (result == "OK") {
						closeDialog();
						alert("成功");
						$("#tableSort tbody").html('');
						selectMessage();
					} else {
						closeDialog();
						alert("失败");
					}
				});
			});

		}
		function closeDialog() {
			demotxt.style.display = "none";
			demobg.style.display = "none";
		}
	</script>
</body>
</html>
