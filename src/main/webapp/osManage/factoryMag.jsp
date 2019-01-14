<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- "系统管理--分厂管理"的页面 -->
<html>
<head>
<!-- 编码方式 -->
<meta charset="utf-8">
<!-- 适配各种频幕 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 标题 -->
<title>分厂管理</title>
<!-- Bootstrap CSS -->
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<!-- 关于表格的css，自己定义的css -->
<link href="../css/table.css" rel="stylesheet">
<!-- 关于弹出框的css，自己定义的css -->
<link href="../css/popOut.css" rel="stylesheet">
<!-- 表格排序的js和模态框，要引用jQuery库 -->
<script type="text/javascript" src='../js/jquery-1.11.3.min.js'></script>
<!-- 表格的排序的样式 -->
<script type="text/javascript" src='../js/table.js'></script>
<!--引入模态框需要的js-->
<script src="../js/bootstrap.js"></script>
<!-- 表格图片和筛选框的样式的样式，自定义的CSS -->
<link href="../css/sortCondi.css" rel="stylesheet">
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
<link href="../css/zTreeStyle.css" rel="stylesheet">
<!-- 引入zTree的官方js文件 -->
<script type="text/javascript" src="../js/jquery.ztree.core.js"></script>
<script type="text/javascript" src="../js/jquery.ztree.excheck.js"></script>
<!-- zTree的样式，zTree部分的框 -->
<style type="text/css">
ul.ztree {
	margin-top: 15px;
	margin-bottom: 10px;
	border: 1px solid #617775;
	background: #ffffff;
	width: 270px;
	height: 500px;
	overflow-y: scroll;
	overflow-x: auto;
}
</style>
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
		callback: {
			onClick: zTreeOnClick
		}
	};


	 /*树结构  */
	var code;
	var plantID;
	var plantIDName;
	var belongId;
	var selfPlantID;
	var pageSize=3;
	var pageNumber;
	if(pageNumber==null){
		pagerNumber=1;
	}
	function zTreeOnClick(event, treeId, treeNode) {
	
		
		 $.post("/XiShanCloalSystem/plant/getPlantListByPlantidForFactory",{"plantID":treeNode.id},function(result){
			 plantID=treeNode.id;
			 plantIDName=treeNode.name;
			 /* alert(plantIDName); */
			 $("#tableSort tbody").html(''); 
/* 			alert(result.numberTotal);
			alert(result.pagerNumber);
			alert(result.list[0]); */
			 var num=1;
			var html=''; 
		   for(var i=0;i<result.length;i++){
				html+="<tr>"
				html+="<td>"+num+"</td>"
				html+="<td>"+result[i].plantname+"</td>"
				html+="<td>"+plantIDName+"</td>"
				html+="<td>"+result[i].plantleader+"</td>"
				html+="<td>"+result[i].plantphonenumber+"</td>"
				html+="<td>"+result[i].plantadress+"</td>"
				html+="<td><button class=\"btn btn-default btn-sm\"onclick=\"openDialog('"+result[i].plantid+"')\">修改</button>&nbsp;<button class=\"btn btn-primary btn-sm\" onclick=\"deleteDialog('"+result[i].plantid+"','"+plantID+"')\">删除</button></td>"
				html+="</tr>"
				num++;
			 }

			 $("#tableSort tbody").append(html); 
			 });
		
	}
	
	/* var code; */
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

	$(document).ready(function() {
		 $.post("/XiShanCloalSystem/plant/getPlantList",null,function(result){
				
			 var treeObj= $.fn.zTree.init($("#treeDemo"), setting, result );
			  var node = treeObj.getNodeByParam('id', 1);
			  treeObj.selectNode(node);
	          treeObj.setting.callback.onClick(null, treeObj.setting.treeId, node); 
			 
		 }); 
		//$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		setCheck();
		$("#py").bind("change", setCheck);
		$("#sy").bind("change", setCheck);
		$("#pn").bind("change", setCheck);
		$("#sn").bind("change", setCheck);
	});
</script>
</head>
<body>
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">关闭</button>
					<h2 class="modal-title" id="myModalLabel">添加部门</h2>
				</div>
				<div class="modal-body">
					<div style="width: 80%; margin-left: 10%;">
						<div class="form-group row form-inline">
							<label class="col-sm-3">部门名</label> <input class="form-control"
								type="text" style="display: inline-block;"id="plantname">
						</div>
						<div class="form-group row form-inline">
							<label class="col-sm-3">负责人</label> <input class="form-control"
								type="text" style="display: inline-block;"id="plantleader">
						</div>
						<div class="form-group row form-inline">
							<label class="col-sm-3">联系方式</label> <input class="form-control"
								type="text" style="display: inline-block;"id="plantphonenumber">
						</div>
						<div class="form-group row form-inline">
							<label class="col-sm-3">地址</label> <input class="form-control"
								type="text" style="display: inline-block;"id="plantadress">
						</div>
						<div class="form-group row form-inline">
							<label class="col-sm-3">上级部门</label> <input class="form-control"
								type="text" style="display: inline-block;"id="plantbelong" disabled="disabled">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="addDialog()">提交</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<!-- 标题 -->
	<div style="background-color: #F5F5F5; padding: 2PX;">
		<h4>&nbsp;&nbsp;&nbsp;&nbsp;分厂管理</h4>
	</div>
	<div class='demo'>
		<div style="padding-top: 48px; padding-left: 30px;padding-right: 30px;">
			<!--未弹出对话框之前显示的界面-->
			<table style="width: 100%;">
				<tr>
					<!-- 左边分厂选择 -->
					<td>
						<!-- ztree部分 -->
						<ul id="treeDemo" class="ztree"
							style="margin: 5px 15px 0px 10px; border-color: #CCCCCC;"></ul>
					</td>
					<!-- 右边内容部分 -->
					<td style="width:78%;">
						<p>
								<button class="btn btn-default btn-sm" onclick="inquireDialog()">查询</button>
<!-- 							&nbsp; <input value="清空" onClick="" type="reset" -->
<!-- 							class="btn btn-sm btn-primary"> -->
					    	</p> <!-- 标题下面一个表格 --> <!-- 筛选框 -->
						<table class="table table-hover table-bordered">
							<tr>
								<td>部门名：</td>
								<td style="text-align: left;"><input type="text"id="plantnameSelect"
									class="input"></td>
							</tr>
						</table>
						<table class="table table-hover table-bordered" id="tableSort">
							<p>
								<button class="btn btn-primary btn-sm" data-toggle="modal"
									data-target="#myModal" onclick="openDialogAdd()">添加部门</button>
							</p>
							<!-- 第一行，一系列属性 -->
							<thead>
							<tr class="tab-head">
								<th><input type="checkbox"></th>
								<th>部门名</th>
								<th>上级部门</th>
								<th>负责人</th>
								<th>联系方式</th>
								<th>地址</th>
								<th>操作</th>
							</tr>
							</thead>
							<tbody>
							</tbody>
							<!-- 第二行，一些写死的数据，后面是根据传入数据进行输出，此处应有jsp代码 -->
							<!-- <tr>
								<td><input type="checkbox"></td>
								<td>办公室</td>
								<td>职能部门</td>
								<td>张三</td>
								<td>13312344321</td>
								<td>地址A</td>
								<td><a href="resetDepartment.html"><button
											class="btn btn-primary btn-sm">编辑</button></a>&nbsp;
									<button class="btn btn-primary btn-sm">删除</button></td>
							</tr> -->
							<!-- 第三行，一些写死的数据，后面是根据传入数据进行输出，此处应有jsp代码 -->
							<!-- <tr>
								<td><input type="checkbox"></td>
								<td>财务处</td>
								<td>职能部门</td>
								<td>李四</td>
								<td>15512344321</td>
								<td>地址B</td>
								<td>
									<a href="resetDepartment.html"><button
											class="btn btn-primary btn-sm">编辑</button></a>&nbsp;
									<button class="btn btn-primary btn-sm">删除</button>
								</td>
							</tr> -->
						</table> <!-- 三个按钮 -->
						<!-- <p align="left">
							这里也是写死的数据，后期从后台获取数据，写jsp代码
							<span style="font-size: 14px;" id="pagerNum">显示第1条到第2条记录，总共2条记录</span>
						</p> 分页功能
						<nav aria-label="Page navigation">
							分页插件
							<ul class="pagination" id="pagerUse">
								前部符号
								<li><a href="#" aria-label="Previous"> <span
										aria-hidden="true">&laquo;</span>
								</a></li>
								中间每一页，后期根据后台数据修改
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								后部符号
								<li><a href="#" aria-label="Next"> <span
										aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</nav> -->
					</td>
				</tr>

			</table>
		</div>
		<div class='demo-bg'></div>
		<!--弹出框的内容在下面这个div里增加即可,写个z-tree吧-->
		<div class='demo-txt'>
			<button id="btn" class="btn" onclick="closeDialog()">关闭</button>
			<div style="width: 80%; margin-left: 10%;">
				<h3>编辑部门</h3>
				<hr />
				<div class="form-group row form-inline">
					<label class="col-sm-3">部门名</label> <input class="form-control"
						type="text" style="display: inline-block;"id="plantnameUpdate">
				</div>
				<div class="form-group row form-inline">
					<label class="col-sm-3">负责人</label> <input class="form-control"
						type="text" style="display: inline-block;"id="plantleaderUpdate">
				</div>
				<div class="form-group row form-inline">
					<label class="col-sm-3">联系方式</label> <input class="form-control"
						type="text" style="display: inline-block;"id="plantphonenumberUpdate">
				</div>
				<div class="form-group row form-inline">
					<label class="col-sm-3">地址</label> <input class="form-control"
						type="text" style="display: inline-block;"id="plantadressUpdate">
				</div>
				<div class="form-group row form-inline">
					<label class="col-sm-3">上级部门</label> <input class="form-control"
						type="text" style="display: inline-block;"id="plantbelongUpdate" disabled="disabled">
				</div>
				<button class="btn btn-primary"onclick="updateDialog()">提交</button>
			</div>
		</div>
	</div>
	<script>
		var demobg = document.querySelector(".demo-bg");
		var demotxt = document.querySelector(".demo-txt");
		var plantidd;
		function openDialog(plantid) {
			
			//console.log(result)
			//alert(plantid);
	   	/* plantID=plantid */ 
			 $.post("/XiShanCloalSystem/plant/getPlantListByPlant",{"plantid":plantid},function(result){	
			
			//alert("11111111111111111111111111");
			//alert(result[0].plantname);
			selfPlantID=plantid;
			$("#plantnameUpdate").val(result[0].plantname);
		 	$("#plantbelongUpdate").val(plantIDName);
 			$("#plantleaderUpdate").val(result[0].plantleader);
			$("#plantphonenumberUpdate").val(result[0].plantphonenumber);
			$("#plantadressUpdate").val(result[0].plantadress);
			 });
			demotxt.style.display = "block";
			demobg.style.display = "block"; 
		}
	
		
		function closeDialog() {
			demotxt.style.display = "none";
			demobg.style.display = "none";
		}
		
		var dialog = document.querySelector(".modal-dialog");
		var content = document.querySelector(".modal-content");
		
		function openDialogAdd(){
			
			$("#plantname").val('');
			$("#plantleader").val('');
			$("#plantleader").val('');
			$("#plantphonenumber").val('');
			$("#plantadress").val('');
			$("#plantbelong").val(plantIDName);
			
			dialog.style.display = "block";
			content.style.display = "block";
		}
		function closeDialogAdd() {
			content.style.display = "none";
			dialog.style.display = "none";
		}
		
		function addDialog() {
			
			/*  alert("-----------------"+plantID);
			$("#plantbelong").val(plantID); */
			var plantname = $("#plantname").val()
			var plantleader = $("#plantleader").val()
			var plantphonenumber = $("#plantphonenumber").val()
			var plantadress = $("#plantadress").val()
			var plantbelong = plantID;
			 $.post("/XiShanCloalSystem/plant/InsertPlant",{"plantname":plantname,"plantleader":plantleader,"plantphonenumber":plantphonenumber,"plantadress":plantadress,"plantbelong":plantbelong},function(result){
				 closeDialog()
				 alert("成功");
				 
				 $.post("/XiShanCloalSystem/plant/getPlantListByPlantidForFactory",{"plantID":plantID},function(result){
					 $("#tableSort tbody").html(''); 
					var num=1;
					var html=''; 
				   for(var i=0;i<result.length;i++){
					   html+="<tr>"
							html+="<td>"+num+"</td>"
							html+="<td>"+result[i].plantname+"</td>"
							html+="<td>"+plantIDName+"</td>"
							html+="<td>"+result[i].plantleader+"</td>"
							html+="<td>"+result[i].plantphonenumber+"</td>"
							html+="<td>"+result[i].plantadress+"</td>"
							html+="<td><button class=\"btn btn-default btn-sm\"onclick=\"openDialog('"+result[i].plantid+"')\">修改</button>&nbsp;<button class=\"btn btn-primary btn-sm\" onclick=\"deleteDialog('"+result[i].plantid+"','"+plantID+"')\">删除</button></td>"
							html+="</tr>"
							num++;
					 }

					 $("#tableSort tbody").append(html); 
					 //$("#myModal").hide();
					 demotxt.style.display = "none";
						demobg.style.display = "none";
				 }); 
				 $.post("/XiShanCloalSystem/plant/getPlantList",null,function(result){
						
					 var treeObj= $.fn.zTree.init($("#treeDemo"), setting, result );});
				 
				 
			 });	
			 
		}
		function updateDialog() {
			 closeDialog();
			// $("#updateidnex").html('修改指标')
			var plantname = $("#plantnameUpdate").val()
			var plantleader = $("#plantleaderUpdate").val()
			var plantphonenumber = $("#plantphonenumberUpdate").val()
			var plantadress = $("#plantadressUpdate").val()
			var plantbelong = plantID;
			/*  alert(plantname); */
			/* alert(selfPlantID);
			alert(plantID); */
			 $.post("/XiShanCloalSystem/plant/updatePlant",{"plantname":plantname,"plantleader":plantleader,"plantphonenumber":plantphonenumber,"plantadress":plantadress,"plantbelong":plantbelong,"plantid":selfPlantID},function(result){
				// closeDialog();
				 alert("成功");
				 $.post("/XiShanCloalSystem/plant/getPlantListByPlantidForFactory",{"plantID":plantID},function(result){
					 $("#tableSort tbody").html(''); 
					
					var num=1;
					var html=''; 
				   for(var i=0;i<result.length;i++){
					   html+="<tr>"
							html+="<td>"+num+"</td>"
							html+="<td>"+result[i].plantname+"</td>"
							html+="<td>"+plantIDName+"</td>"
							html+="<td>"+result[i].plantleader+"</td>"
							html+="<td>"+result[i].plantphonenumber+"</td>"
							html+="<td>"+result[i].plantadress+"</td>"
							html+="<td><button class=\"btn btn-default btn-sm\"onclick=\"openDialog('"+result[i].plantid+"')\">修改</button>&nbsp;<button class=\"btn btn-primary btn-sm\" onclick=\"deleteDialog('"+result[i].plantid+"','"+plantID+"')\">删除</button></td>"
							html+="</tr>"
							num++;
					 }

					 $("#tableSort tbody").append(html); 
				 });  
				 $.post("/XiShanCloalSystem/plant/getPlantList",null,function(result){
						
					 var treeObj= $.fn.zTree.init($("#treeDemo"), setting, result );});
				 
			 });		 
		}
		function deleteDialog(plantid,belongId) {

			/* alert(belongId);
			alert(plantid); */
			  var fdel=window.confirm("是否确定删除？");
			  if (fdel)
			  {   
			/* alert(plantid); */
			 $.post("/XiShanCloalSystem/plant/deletePlant",{"plantid":plantid},function(result){
				 /* alert(plantid); */
				/*  alert("删除成功！"); */
				 $.post("/XiShanCloalSystem/plant/getPlantListByPlantidForFactory",{"plantID":belongId},function(result){
				 $("#tableSort tbody").html(''); 
				 	
				 var num=1;
					var html=''; 
					 for(var i=0;i<result.length;i++){
						   html+="<tr>"
								html+="<td>"+num+"</td>"
								html+="<td>"+result[i].plantname+"</td>"
								html+="<td>"+plantIDName+"</td>"
								html+="<td>"+result[i].plantleader+"</td>"
								html+="<td>"+result[i].plantphonenumber+"</td>"
								html+="<td>"+result[i].plantadress+"</td>"
								html+="<td><button class=\"btn btn-default btn-sm\"onclick=\"openDialog('"+result[i].plantid+"')\">修改</button>&nbsp;<button class=\"btn btn-primary btn-sm\" onclick=\"deleteDialog('"+result[i].plantid+"','"+plantID+"')\">删除</button></td>"
								html+="</tr>"
								num++;
						 }
					 /* alert(html); */
						 $("#tableSort tbody").append(html); 
					 });  
			 });	
			  }
			  else
			  { return false; }
		}
		
		function inquireDialog() {
			//var plantID = $("#plantID").val()
			var plantname = $("#plantnameSelect").val()
			/* alert(plantname);
			alert(plantID); */
			 $.post("/XiShanCloalSystem/plant/inquireplant",{"plantname":plantname,"plantID":plantID},function(result){
				 closeDialog()
				 $("#tableSort tbody").html(''); 
					var num=1;
					var html=''; 
				   for(var i=0;i<result.length;i++){
						html+="<tr>"
						html+="<td>"+num+"</td>"
						html+="<td>"+result[i].plantname+"</td>"
						html+="<td>"+plantIDName+"</td>"
						html+="<td>"+result[i].plantleader+"</td>"
						html+="<td>"+result[i].plantphonenumber+"</td>"
						html+="<td>"+result[i].plantadress+"</td>"
						html+="<td><button class=\"btn btn-default btn-sm\"onclick=\"openDialog('"+result[i].plantid+"')\">修改</button>&nbsp;<button class=\"btn btn-primary btn-sm\" onclick=\"deleteDialog('"+result[i].plantid+"','"+plantID+"')\">删除</button></td>"
						html+="</tr>"
						num++;
					 }

					 $("#tableSort tbody").append(html); 
			 });	 
		}
	</script>
</body>
</html>