<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<!-- "数据管理--指标管理"的页面 -->
<html>
<head>
<!-- 编码方式 -->
<meta charset="utf-8">
<!-- 适配各种频幕 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 标题 -->
<title>指标数据</title>
<!-- Bootstrap CSS -->
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<!-- 关于表格的css，自己定义的css -->
<link href="../css/table.css" rel="stylesheet">
<!-- 关于弹出框的css，自己定义的css -->
<link href="../css/popOut.css" rel="stylesheet">
<!-- 表格排序的js，要引用jQuery库 -->
<script type="text/javascript" src='../js/jquery-1.11.3.min.js'></script>
<!-- 表格的排序的样式 -->
<script type="text/javascript" src='../js/table.js'></script>
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
	margin-top: 10px;
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
	function zTreeOnClick(event, treeId, treeNode) {
		 $.post("/XiShanCloalSystem/indexsystem/getIndexsystemList",{"plantID":treeNode.id},function(result){
			 plantID=treeNode.id;
			 $("#tableSort tbody").html(''); 
			var basicnumberName="否";
			var num=1;
			var html=''; 
		   for(var i=0;i<result.length;i++){
			   if(result[i].basicnumber=="0"){
					basicnumberName="否"
				}else if(result[i].basicnumber=="1"){
					basicnumberName="是"
				}
				html+="<tr>"
				html+="<td>"+num+"</td>"
				html+="<td>"+result[i].indexname+"</td>"
				html+="<td>"+result[i].max+"</td>"
				html+="<td>"+result[i].min+"</td>"
				html+="<td>"+result[i].unit+"</td>"
				html+="<td>"+basicnumberName+"</td>"
				html+="<td><button class=\"btn btn-default btn-sm\"onclick=\"openDialog("+result[i].indexid+")\">修改</button>&nbsp;<button class=\"btn btn-primary btn-sm\" onclick=\"deleteDialog("+result[i].indexid+")\">删除</button></td>"
				html+="</tr>"
				num++;
			 }

			 $("#tableSort tbody").append(html); 
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

	$(document).ready(function() {
		 $.post("/XiShanCloalSystem/plant/getPlantList",null,function(result){
				
			 var treeObj= $.fn.zTree.init($("#treeDemo"), setting, result);
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
	<!-- 标题 -->
	<div style="background-color: #F5F5F5; padding: 2PX;">
		<h4>&nbsp;&nbsp;&nbsp;&nbsp;指标管理</h4>
	</div>
	<div class='demo' style="padding-top:48px; padding-left:30px;padding-right:30px;">
		<!-- 整个body里面就这一个div -->
			<div>
				<table style="width: 100%;">
					<tr>
						<!-- 左边分厂选择 -->
						<td>
							<!-- ztree部分 -->
							<ul id="treeDemo" class="ztree" style="margin:5px 15px 0px 10px; height: 450px; border-color: #CCCCCC;"></ul>
						</td>
						<!-- 右边内容部分 -->
						<td>
							<p>
								<button class="btn btn-default btn-sm" onclick="inquireDialog()">查询</button>
<!-- 							&nbsp; <input value="清空" onClick="" type="reset" -->
<!-- 							class="btn btn-sm btn-primary"> -->
					    	</p> <!-- 标题下面一个表格 --> <!-- 数据展示 -->
							<!-- 筛选框 -->
							<table class="table table-hover table-bordered">
								<tr>
									<td>指标名：</td>
									<td style="text-align: left;"><input type="text" id="indename"
										class="input" style="opacity: 0.45;"></td>
								</tr>
							</table>
							<p>
								<a href="javascript:void(0)"  onclick="addDialog()"><button
										 class="btn btn-primary btn-sm">添加指标</button></a>
								<!-- <button class="btn btn-primary btn-sm">全部删除</button> -->
								<!-- 这里也是写死的数据，后期从后台获取数据，写jsp代码 -->
							</p> <!-- 这里也是写死的数据，后期从后台获取数据，写jsp代码 -->
							<table class="table table-hover table-bordered"
								summary="user infomation table" id="tableSort" style="width: 100%;">
								<!-- 第一行，一系列属性 -->
								<thead>
									<tr class="tab-head">
										
										<!-- 这个即每条数据的编号，即主键 -->
										<th >指标编号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
										<th >指标名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
										<th >预警值-最大值&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
										<th >预警值-最小值&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>	
										<th >单位&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
										<th >基础指标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
										<th>操作</th>
									</tr>
								</thead>
								<!-- 第二行，一些写死的数据，后面是根据传入数据进行输出，此处应有jsp代码 -->
								<tbody>
								<!-- <tr>
									<td><input type="checkbox"></td>
									<td>0001</td>
									<td>红药</td>
									<td>20</td>
									<td>千克每立方米</td>
									<td><button class="btn btn-default btn-sm"
											onclick="openDialog()">修改</button>&nbsp;
										<button class="btn btn-primary btn-sm">删除</button></td>
								</tr>
								<!-- 第三行，一些写死的数据，后面是根据传入数据进行输出，此处应有jsp代码
								<tr>
									<td><input type="checkbox"></td>
									<td>0002</td>
									<td>白药</td>
									<td>0.5</td>
									<td>吨每立方米</td>
									<td><button class="btn btn-default btn-sm"
											onclick="openDialog()">修改</button>&nbsp;
										<button class="btn btn-primary btn-sm">删除</button></td>
								</tr>
								第四行，一些写死的数据，后面是根据传入数据进行输出，此处应有jsp代码
								<tr>
									<td><input type="checkbox"></td>
									<td>0003</td>
									<td>黄药</td>
									<td>200</td>
									<td>克每立方米</td>
									<td><button class="btn btn-default btn-sm"
											onclick="openDialog()">修改</button>&nbsp;
										<button class="btn btn-primary btn-sm">删除</button></td>
								</tr> --> 
								</tbody>
							</table> <!-- 按钮 -->
							<!-- <p align="left">显示第1条到第4条记录，总共4条记录</p> 分页功能
							<nav aria-label="Page navigation">
								分页插件
								<ul class="pagination">
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

		</div>
		<div class='demo-bg'></div>
		<!--弹出框的内容在下面这个div里增加即可,写个z-tree吧-->
		<div class='demo-txt' id="dialog" style="height:550px;">
			<button id="btn" class="btn" onclick="closeDialog()">关闭</button>
			<div style="width: 80%; margin-left: 10%;">
				<h3 id="updateidnex">修改指标</h3>
				<hr />
				<!-- <div class="form-group row form-inline">
					<label class="col-sm-3">指标编号</label> <input class="form-control"
						type="text" style="display: inline-block;">
				</div> -->
				<div class="form-group row form-inline">
					<label class="col-sm-3">指标名</label> <input class="form-control"
						type="text" style="display: inline-block;" id="indexname">
				</div>
				<div class="form-group row form-inline">
					<label class="col-sm-3">预警值-最大值</label> <input class="form-control"
						type="text" style="display: inline-block;"id="max">
				</div>
				<div class="form-group row form-inline">
					<label class="col-sm-3">预警值-最小值</label> <input class="form-control"
						type="text" style="display: inline-block;"id="min">
				</div>
				<div class="form-group row form-inline">
					<label class="col-sm-3">单位</label> <input class="form-control"
						type="text" style="display: inline-block;"id="unit">
				</div>
				<div class="form-group row form-inline">
					<label class="col-sm-3">基础指标</label> 
					<select  class="form-control" style="display: inline-block;"id="basicnumber" value="0">
  						<option value="0" >否</option>
  						<option value="1">是</option>
					</select>
				</div>
				<button class="btn btn-primary" onclick="updateIndex()">提交</button>
			</div>
		</div>
	</div>
	<script>
		var demobg = document.querySelector(".demo-bg");
		var demotxt = document.querySelector(".demo-txt");
		var indexID;
		function openDialog(indexid) {
			$("#updateidnex").html('修改指标')
		
		indexID=indexid
		 $.post("/XiShanCloalSystem/indexsystem/getIndexsystemListByIndexID",{"indexid":indexid},function(result){	
		console.log(result)
		$("#indexname").val(result[0].indexname);
		$("#max").val(result[0].max);
		$("#min").val(result[0].min);
		$("#unit").val(result[0].unit);
		$("#basicnumber").val(result[0].basicnumber);
		 });
		 
		
			demotxt.style.display = "block";
			demobg.style.display = "block";
		}
		
		function addDialog(){
			$("#updateidnex").html('添加指标')
			$("#indexname").val('')
			$("#max").val('')
			$("#min").val('')
			$("#unit").val('')
			$("#basicnumber").val("0");
			demotxt.style.display = "block";
			demobg.style.display = "block";
			indexID=null;
			/* var indexname = $("#indexname").val()
			var max = $("#max").val()
			var min = $("#min").val()
			var unit = $("#unit").val()
			var isdelete = 0;
			alert(indexname);
			 $.post("/XiShanCloalSystem/insertIndexsystem",{"indexname":indexname,"max":max,"min":min,"unit":unit,"plantID":plantID,"isdelete":isdelete},function(result){
				 
				 alert("添加成功！");
			 }); */	 
			
		}
		
		function closeDialog() {
			demotxt.style.display = "none";
			demobg.style.display = "none";
		}
		function updateIndex() {
			 closeDialog()
			$("#updateidnex").html('修改指标')
			var indexname = $("#indexname").val()
			var max = $("#max").val()
			var min = $("#min").val()
			var unit = $("#unit").val()
			var basicnumber =$("#basicnumber").val()
			if(parseInt(min)>=parseInt(max)){
				alert("最小值不能大于等于最大值,请重新添加");
				demotxt.style.display = "none";
				demobg.style.display = "none";
				return null;
			}
			
			//alert(basicnumber);
			 $.post("/XiShanCloalSystem/indexsystem/updateIndexsystem",{"indexname":indexname,"max":max,"min":min,"unit":unit,"indexid":indexID,"plantID":plantID,"basicnumber":basicnumber},function(result){
				 closeDialog()
				 alert("成功");
				 /* alert(plantID) */
				 $.post("/XiShanCloalSystem/indexsystem/getIndexsystemList",{"plantID":plantID},function(result){
					 $("#tableSort tbody").html(''); 
					var num=1;
					var html=''; 
					var basicnumberName="否";
					
				   for(var i=0;i<result.length;i++){
					   if(result[i].basicnumber=="0"){
							basicnumberName="否"
						}else if(result[i].basicnumber=="1"){
							basicnumberName="是"
						}
						html+="<tr>"
						html+="<td>"+num+"</td>"
						html+="<td>"+result[i].indexname+"</td>"
						html+="<td>"+result[i].max+"</td>"
						html+="<td>"+result[i].min+"</td>"
						html+="<td>"+result[i].unit+"</td>"
						html+="<td>"+basicnumberName+"</td>"
						html+="<td><button class=\"btn btn-default btn-sm\"onclick=\"openDialog("+result[i].indexid+")\">修改</button>&nbsp;<button class=\"btn btn-primary btn-sm\" onclick=\"deleteDialog("+result[i].indexid+")\">删除</button></td>"
						html+="</tr>"
						num++;
					 }

					 $("#tableSort tbody").append(html); 
				 }); 
				 
				 
			 });	
			 
		}
		function deleteDialog(indexid) {

			  var fdel=window.confirm("是否确定删除？");
			  if (fdel)
			  {  
			
			var isdelete = 1;
			//alert(indexid);
			 $.post("/XiShanCloalSystem/indexsystem/deleteIndexsystem",{"isdelete":isdelete,"indexid":indexid},function(result){
				 
				 /* alert("删除成功！"); */
				 $.post("/XiShanCloalSystem/indexsystem/getIndexsystemList",{"plantID":plantID},function(result){
					 
				 $("#tableSort tbody").html(''); 
					var num=1;
					var html=''; 
					var basicnumberName="否";
					
				   for(var i=0;i<result.length;i++){
					   if(result[i].basicnumber=="0"){
							basicnumberName="否"
						}else if(result[i].basicnumber=="1"){
							basicnumberName="是"
						}
						html+="<tr>"
						html+="<td>"+num+"</td>"
						html+="<td>"+result[i].indexname+"</td>"
						html+="<td>"+result[i].max+"</td>"
						html+="<td>"+result[i].min+"</td>"
						html+="<td>"+result[i].unit+"</td>"
						html+="<td>"+basicnumberName+"</td>"
						html+="<td><button class=\"btn btn-default btn-sm\"onclick=\"openDialog("+result[i].indexid+")\">修改</button>&nbsp;<button class=\"btn btn-primary btn-sm\" onclick=\"deleteDialog("+result[i].indexid+")\">删除</button></td>"
						html+="</tr>"
						num++;
				   }
				   $("#tableSort tbody").append(html); 
				 }); 
			 });	
			 
			  }
			  else
			  { return false; }  
		}
			 
		function inquireDialog() {
			//var plantID = $("#plantID").val()
			var indexname = $("#indename").val()
			
			 $.post("/XiShanCloalSystem/indexsystem/inquireIndexsystem",{"indexname":indexname,"plantID":plantID},function(result){
				 
				 closeDialog()
				
				 
				 $("#tableSort tbody").html(''); 
					var num=1;
					var html=''; 
					var basicnumberName="否";
				   for(var i=0;i<result.length;i++){
					   if(result[i].basicnumber=="0"){
							basicnumberName="否"
						}else if(result[i].basicnumber=="1"){
							basicnumberName="是"
						}
						html+="<tr>"
						html+="<td>"+num+"</td>"
						html+="<td>"+result[i].indexname+"</td>"
						html+="<td>"+result[i].max+"</td>"
						html+="<td>"+result[i].min+"</td>"
						html+="<td>"+result[i].unit+"</td>"
						html+="<td>"+basicnumberName+"</td>"
						html+="<td><button class=\"btn btn-default btn-sm\"onclick=\"openDialog("+result[i].indexid+")\">修改</button>&nbsp;<button class=\"btn btn-primary btn-sm\" onclick=\"deleteDialog("+result[i].indexid+")\">删除</button></td>"
						html+="</tr>"
						num++;
					 }

					 $("#tableSort tbody").append(html); 
			 });	 
		}
	</script>
</body>
</html>
