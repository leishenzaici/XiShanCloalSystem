<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>opacity</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap CSS -->
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<!-- 关于表格的css，自己定义的css -->
<link href="${pageContext.request.contextPath}/css/table.css"
	rel="stylesheet">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/jeDate/test/jeDate-test.css">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/jeDate/skin/jedate.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jeDate/src/jedate.js"></script>

<style>
</style>
</head>
<body>
	<!-- 标题 -->
	<div style="background-color: #F5F5F5; padding: 2PX;">
		<h4 style="font-size: 18px; margin-top: 10px; margin-bottom: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;录入数据</h4>
	</div>
	<div class='demo'>
		<div class="jumbotron">
			<div class="form-group row form-inline ilable">
				<label class="col-sm-3">时间</label> <input class="form-control"
					id="inputDate" type="text" placeholder="YYYY年MM月DD日 " readonly>
				<!-- &nbsp;&nbsp;<select class="form-control"
					style="display: inline-block;">
					<option value="白班">白班</option>
					<option value="夜班">夜班</option>
				</select> -->
			</div>
			<div class="form-group row form-inline ilable">
				<label class="col-sm-3">COD进水（矿井废水）</label> <input id="codcr_waste"
					class="form-control" value="0" type="text" onkeyup="this.value=(this.value.match(/^\d+\.?\d*/)||[''])[0]"
					style="display: inline-block;">
			</div>
			<div class="form-group row form-inline ilable">
				<label class="col-sm-3">COD进水（生活污水）</label> <input id="codcr_sewage"
					class="form-control" value="0" type="text" onkeyup="this.value=(this.value.match(/^\d+\.?\d*/)||[''])[0]"
					style="display: inline-block;">
			</div>
			<div class="form-group row form-inline ilable">
				<label class="col-sm-3">CODcr出水</label> <input id="codcr_out"
					class="form-control" value="0" type="text" onkeyup="this.value=(this.value.match(/^\d+\.?\d*/)||[''])[0]"
					style="display: inline-block;">
			</div>
			<div class="form-group row form-inline ilable">
				<label class="col-sm-3">SS进水（矿井废水）</label> <input id="ss_waste"
					class="form-control" value="0" type="text" onkeyup="this.value=(this.value.match(/^\d+\.?\d*/)||[''])[0]"
					style="display: inline-block;">
			</div>
			<div class="form-group row form-inline ilable">
				<label class="col-sm-3">SS进水（生活污水）</label> <input id="ss_sewage"
					class="form-control" value="0" type="text" onkeyup="this.value=(this.value.match(/^\d+\.?\d*/)||[''])[0]"
					style="display: inline-block;">
			</div>
			<div class="form-group row form-inline ilable">
				<label class="col-sm-3">SS出水</label> <input id="ss_out"
					class="form-control" value="0" type="text" onkeyup="this.value=(this.value.match(/^\d+\.?\d*/)||[''])[0]"
					style="display: inline-block;">
			</div>

			<c:forEach var="item" items="${indexSystemList}" varStatus="status">
				<div class="form-group row form-inline ilable">
					<label class="col-sm-3" id="name${status.index}"> ${item.indexname} ( ${item.unit} )</label>
					<input id="index${status.index}" class="form-control" type="text"
						style="display: inline-block;">
				</div>
			</c:forEach>
			<!-- <button class="btn btn-primary btn-sm  ibutton" onclick="saveData()">提交</button> -->
			<div class="form-group row form-inline ilable">
				<button class="btn btn-primary" onclick="saveData()">提交</button>
			</div>
		</div>
	</div>
	<script>
	function saveData(){
	var sizeListSize=${requestScope.indexSystemList.size()}
	var strAppend='';
	 for(var i=0;i<sizeListSize;i++){
		 if($("#index"+i).val()==''){
			 $("#index"+i).val('0');
			 alert("不能为空");
			 return false;
		 }
		 if(!/^[0-9,.]*$/.test($("#index"+i).val().trim())){
			  alert("只能输入数字");
			  $("#index"+i).val('');
			  return false;
		}
		strAppend+=$("#index"+i).val()+",";
	} 
	 
  	var inputDate=$('#inputDate').val();
  	var codcrWaste= document.getElementById("codcr_waste").value;
  	var codcrSewage= document.getElementById("codcr_sewage").value;
  	var codcrOut= document.getElementById("codcr_out").value;
  	var ssWaste= document.getElementById("ss_waste").value;
  	var ssSewage= document.getElementById("ss_sewage").value;
  	var ssOut= document.getElementById("ss_out").value;
  	
  	var inputMessage="请确认后提交!\n";
  	inputMessage+=
  	"COD进水（矿井废水）:"+codcrWaste+"\n"
  	+"COD进水（生活污水）:"+codcrSewage+"\n"
  	+"CODcr出水:"+codcrOut+"\n"
  	+"SS进水（矿井废水）:"+ssWaste+"\n"
  	+"SS进水（生活污水）:"+ssSewage+"\n"
  	+"SS出水:"+ssOut+"\n";
  	
  	for(var i=0;i<sizeListSize;i++){
  		var Label_text = $("#name"+i).text();
  		inputMessage+=	Label_text+":"+$("#index"+i).val()+"\n";
  		
  	}

  	 if(confirm(inputMessage)){
  		 $.post("/XiShanCloalSystem/inputData/saveIndexSystem",{"strAppend":strAppend,"inputDate":inputDate},function(result){
  			 
  			 var dataId = result;
  			 $.post("/XiShanCloalSystem/inputData/saveCodcrAndSS",{"codcrWaste":codcrWaste,"codcrSewage":codcrSewage,
  				 "codcrOut":codcrOut,"ssWaste":ssWaste,"ssSewage":ssSewage,"ssOut":ssOut,"dataId":dataId,"inputDate":inputDate},function(result){
  					 alert("录入成功！"); 
  					 location.reload();
  			 });
  				 
  		});	
  	 }
	
	}
	  jeDate("#inputDate",{
	         theme:{ bgcolor:"#00A1CB",color:"#ffffff", pnColor:"#00CCFF"},
	        isinitVal:true,
	        festival: true,
	        format: 'YYYY-MM-DD hh:mm:ss'
	    });
	</script>
</body>
</html>