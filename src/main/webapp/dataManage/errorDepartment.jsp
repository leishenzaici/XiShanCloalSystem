<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- 数据管理->报告管理->异常部门 -->
<html>
<head>
<!-- 编码方式 -->
<meta charset="utf-8">
<!-- 适配各种频幕 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 标题 -->
<title>异常部门信息</title>
<!-- Bootstrap CSS -->
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<!-- 关于表格的css，自己定义的css -->
<link href="../css/table.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.js"></script>

</head>

<body>
<script>
function saveMynote(puid,startTime,plantID){
	//alert(puid);
	//alert(startTime);
	//alert(plantID);
	var message=$("#"+puid+"").val();
	 $.post("/XiShanCloalSystem/reportmanage/savaReasonByPuid",{"puid":puid,"message":message},function(data){
		 if(data.message=="success"){
			 window.location.href='/XiShanCloalSystem/reportmanage/getAllReportDealByplantAndTime?plantID='+plantID+'&startTime='+startTime+'';
			
			 
		 }
		 else{
			 alert("保存失败，请重试！");
		 }
	 });
}

</script>>
	<!-- 标题 -->
	<div style="background-color: #F5F5F5; padding: 2PX;">
		<h4>&nbsp;&nbsp;&nbsp;&nbsp;${plantName}异常信息</h4>
			
	</div>
	<div class='demo'>
		<div class="jumbotron">
		<p><a href="${pageContext.request.contextPath}/dataManage/manageReport.jsp"><button class="btn btn-primary">返回</button></a></p>
		<c:forEach var="item" items="${report}" varStatus="status">
			<table class="table table-hover table-bordered" >
				<tr>
					<td class="tab-head"><b>序号：</b></td>
					<td colspan="3">${status.count}</td>
					
				</tr>
				<tr>
					<td class="tab-head"><b>时间：</b></td>
					<td>${item.dateStr}</td>
					<td class="tab-head"><b>录入人：</b></td>
					<td>${item.username}</td>
				</tr>
				<tr>
				<td class="tab-head"><b>联系方式：</b></td>
					<td>${item.phone}</td>
					<td class="tab-head"><b>异常指标名称：</b></td>
					<td>${item.indexName}</td>
					
				</tr>
				
				<tr>
				    <td class="tab-head"><b>超标原因：</b></td>
					<td colspan="3">${item.reason}</td>
				</tr>
				 <c:if test="${not empty item.imageArray}" >
				<tr>
				    <td class="tab-head"><b>超标原因图片：</b></td>
					
					<td colspan="3">
				  <div style="width:1000px; height:200px;overflow-x:scroll;">
					  <c:forEach var="image" items="${item.imageArray}" varStatus="status">
					  
					  <img alt="未上传图片" src="${image}"  height="200" width="260">
					 
					  </c:forEach>
			      </div>
				 </td>
				</tr>
				 </c:if>
				
					<c:forEach var="report" items="${item.reportList}" varStatus="status">
				<tr>
					<td  class="tab-head"><b>分管领导：</b></td>
					<td>${report.username}</td>
					<td  class="tab-head"><b>时间：</b></td>
					<td>${report.dateStr}</td>
				</tr>
				  
				<tr>
				    <td class="tab-head"><b>意见：</b></td>
					<td colspan="3">${report.message}</td>
				</tr>
				  </c:forEach>
				<tr>
				    <td class="tab-head"><b>我的意见：</b></td>
					<td colspan="2"><input type="text" class="form-control" id="${item.puid}" placeholder="可以填入我的意见"></td>			
						<td colspan="1 "> <button type="button" class="btn btn-sm" onclick="saveMynote('${item.puid}','${startTime}','${plantID}')" >保存意见</button></td>
				</tr>
			</table>
			<br/>
			</c:forEach>
			<!-- <table class="table table-hover table-bordered">
				<tr>
					<td class="tab-head"><b>时间：</b></td>
					<td>2018年10月20日</td>
					<td class="tab-head"><b>录入人：</b></td>
					<td>王五</td>
				</tr>
				<tr>
					<td class="tab-head"><b>部门：</b></td>
					<td>一分厂</td>
					<td class="tab-head"><b>联系方式：</b></td>
					<td>18856788765</td>
				</tr>
				<tr>
				    <td class="tab-head"><b>超标原因：</b></td>
					<td colspan="3">假设红药使用过多<br/><img alt="随便一个图片" src="errInfo.jpg"></td>
				</tr>
				<tr>
					<td  class="tab-head"><b>分管领导：</b></td>
					<td>赵六</td>
					<td  class="tab-head"><b>时间：</b></td>
					<td>2018年10月20日</td>
				</tr>
				<tr>
				    <td class="tab-head"><b>意见：</b></td>
					<td colspan="3">下次注意！</td>
				</tr>
			</table>
			<br/> -->
		
		</div>
	</div>
</html>
