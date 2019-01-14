<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- "数据管理--报告管理"的页面 -->
<html>
<head>
<!-- 编码方式 -->
<meta charset="utf-8">
<!-- 适配各种频幕 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 标题 -->
<title>报告管理</title>
<!-- Bootstrap CSS -->
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">

<!-- 关于表格的css，自己定义的css -->
<link href="../css/table.css" rel="stylesheet">
<!-- 关于弹出框的css，自己定义的css -->
<link href="../css/popOut.css" rel="stylesheet">
<!-- 表格排序的js，要引用jQuery库 -->
<script type="text/javascript" src='../js/jquery-1.11.js'></script>
<!-- 表格的排序的样式 -->
<script type="text/javascript" src='../js/table.js'></script>
<!-- bootstrap-select-js -->
<!-- bootstrap-select css -->
<link href="../css/bootstrap-select.css" rel="stylesheet">
<script type="text/javascript" src='../js/bootstrap.js'></script>
<script type="text/javascript" src='../js/bootstrap-select.js'></script>
<!-- 表格图片和筛选框的样式的样式，自定义的CSS -->
<link href="../css/sortCondi.css" rel="stylesheet">
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
         
		 $(".selectpicker").selectpicker({  
	            noneSelectedText : '请选择部门'//默认显示内容  
	      });
		  $.post("/XiShanCloalSystem/plant/getPlantList",{},function(data){
			  
			  for(var i=0;i<data.length;i++){
				  $("#slpk").append('<option value='+data[i].id+'>'+data[i].name+'</option>');
			  }
			  
			  $("#slpk").selectpicker("refresh");  
			  $("#slpk").selectpicker("render");
			 
		  }); 
			 
	
	});

</script>
<script>
function selectOnchang(msg){
	var plantIDstr=$("#slpk").val();
	var startTime=$('#startTime').val();
	if(startTime==""){
		alert('请先选择日期！');
		return false;
		
	}
	
		
	  //查询是否有异常信息
	$.post("/XiShanCloalSystem/reportmanage/getAllReportByplantAndTime",{"startTime":startTime,"plantIDstr":plantIDstr.toString()},function(data){
	
		var html=""
		for(var i=0;i<data.length;i++){
			html+="<tr>";
			html+="<td>"+data[i].plantName+"</td>";
			html+="<td>"+data[i].plantLeader+"</td>";
			html+="<td>"+data[i].plantPhoneNumber+"</td>";
			html+="<td>"+data[i].isAll+"</td>";
			html+="<td><a href='/XiShanCloalSystem/reportmanage/getAllAllReportDealByplantAndTime?plantID="+data[i].plantID+"&startTime="+startTime+"' >异常</a></td>";
			html+="</tr>";
			
		}
		 $("#reporttable tbody").html(''); 
		 $("#reporttable tbody").append(html); 
	  }); 
	
}
</script>
</head>
<body>
	<!-- 标题 -->
	<div style="background-color: #F5F5F5; padding: 2PX;">
		<h4>&nbsp;&nbsp;&nbsp;&nbsp;报告管理</h4>
	</div>
	<div class='demo'>
		<div class="jumbotron">
			<!--未弹出对话框之前显示的界面-->
			<table>
				<tr>
					<td>
						<!-- <p align="left">
							<button class="btn btn-default btn-sm">查询</button>
							&nbsp; <input value="清空" onClick="" type="reset"
								class="btn btn-sm btn-primary">
						</p> 标题下面一个表格 筛选框 -->
						<table class="table table-hover table-bordered">
							 <tr>
								<td style="text-align: left;"><input class="input"
									id="startTime" type="date"></td>
								<td style="text-align: left;">
									<select id="slpk" class="selectpicker" data-live-search="true" multiple onchange="selectOnchang(this)"> 
  									
									</select>
								</td>
									
							 </tr>
							<!-- <tr>
								<td>状态：</td>
								<td style="text-align: left;">
								        <label class="radio-inline"> 
								            <input name="factory" type="radio" value="1">正常
								        </label>
								        <label class="radio-inline">
								            <input name="factory" type="radio" value="2">异常
								        </label>
								</td>
							</tr> -->
						</table>
						<table class="table table-hover table-bordered" id="reporttable">
							<!-- <p align="left">
								<button class="btn btn-primary btn-sm">全部删除</button>
							</p> -->
							<!-- 第一行，一系列属性 -->
							<thead>
							<tr class="tab-head">
								<th>部门名</th>
								<th>负责人</th>
								<th>联系方式</th>
								<th>是否全部录入</th>
								<th>状态</th>
							</tr>
							</thead>
							<tbody>
							
							
							</tbody>
						</table>
						<!-- <p align="left">
							这里也是写死的数据，后期从后台获取数据，写jsp代码
							<span style="font-size: 14px;">显示第1条到第2条记录，总共2条记录</span>
						</p> 分页功能
						<nav aria-label="Page navigation">
							分页插件
							<ul class="pagination">
								前部符号
								<li><a href="#" aria-label="Previous"> <span
										aria-hidden="true">&laquo;</span>
								</a></li>
								中间每一页，后期根据后台数据修改
								<li><a href="#">10.20</a></li>
								<li><a href="#">10.19</a></li>
								<li><a href="#">10.18</a></li>
								<li><a href="#">10.17</a></li>
								<li><a href="#">10.16</a></li>
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

</body>
</html>