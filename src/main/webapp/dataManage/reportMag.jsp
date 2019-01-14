<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<!-- "系统管理--超标管理"的页面 -->
<html>
<head>
<!-- 编码方式 -->
<meta charset="utf-8">
<!-- 适配各种频幕 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 标题 -->
<title>超标管理</title>
<!-- Bootstrap CSS -->
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/bootstrap-theme.css" rel="stylesheet">
<!-- 关于表格的css，自己定义的css -->
<link href="../css/table.css" rel="stylesheet">
<!-- 关于弹出框的css，自己定义的css -->
<link href="../css/popOut.css" rel="stylesheet">
<!--全局公用样式-->
<link rel="stylesheet" type="text/css" href="../css/fileinput.css" />

  

<!-- 表格排序的js，要引用jQuery库 -->
<script type="text/javascript" src='../js/jquery-1.11.js'></script>
<script type="text/javascript" src='../js/fileinput.js'></script>
<!-- 表格的排序的样式 -->
<script type="text/javascript" src='../js/table.js'></script>
<!-- 表格图片和筛选框的样式的样式，自定义的CSS -->
<link href="../css/sortCondi.css" rel="stylesheet">
<!--清空数据的js-->
<script src="../js/webuploader.min.js"></script>
<script src="../js/diyUpload.js"></script>
<script type="text/javascript" src='../js/bootstrap.js'></script>
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

	var code;

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
	 var plantID;
	function zTreeOnClick(event, treeId, treeNode) {
		 plantID=treeNode.id;
		 findresport();
	}
	function emptyMessage(){
		$('#startTime').val("");
		$('#endTime').val("");
		$('#username').val("");
	}
	
	function findresport(){
		//获取开始和结束查询时间  
		 var startTime=$('#startTime').val();
		 var endTime=$('#endTime').val();
		 var username=$('#username').val();
		 var html='';
		 var num=1;
		 $.post("/XiShanCloalSystem/report/getDatadealSurpassIdnexList",{"username":username,"startTime":startTime,"endTime": endTime,"plantID":plantID},function(data){
			 $("#tableSort tbody").html(''); 
			 for(var i=0;i<data.length;i++){
				    html+="<tr>";
					html+="<td>"+num+"</td>";
					html+="<td>"+data[i].indexName+"</td>";
					html+="<td>"+data[i].min+"--"+data[i].max+"</td>";
					html+="<td>"+data[i].indexnumber+"</td>";
					html+="<td>"+data[i].overnumber+"</td>";
					html+="<td><input type=\"text\"class=\"input\" value=\""+data[i].reason+"\" id=\"reasoninput"+data[i].puid+"\"></td>";
					html+="<td>"+data[i].username+"</td>";
					html+="<td>"+data[i].plantName+"</td>";
					html+="<td>"+formatDate(data[i].date)+"</td>";
					html+="<td><button class=\"btn btn-default btn-sm\" onclick=\"save("+data[i].puid+")\">保存&nbsp;&nbsp;</button><button class=\"btn btn-default btn-sm\" data-toggle=\"modal\" data-target=\"#myModal\" onclick=\"testupimage("+data[i].puid+")\">上传图片</button><button class=\"btn btn-primary btn-sm\" onclick=\"deletedatadeal("+data[i].puid+")\">删除</button></td>";
					html+="</tr>" 
					num++;
			 }
			 $("#tableSort tbody").append(html); 
		 });
		
	}
	function add0(m){return m<10?'0'+m:m }
	function formatDate(timestamp)
	{
	//timestamp是整数，否则要parseInt转换
	    var time = new Date(timestamp);
	    var y = time.getFullYear();
	    var m = time.getMonth()+1;
	    var d = time.getDate();
	    var h = time.getHours();
	    var mm = time.getMinutes();
	    var s = time.getSeconds();
	    return y+'-'+add0(m)+'-'+add0(d)+' '+add0(h)+':'+add0(mm)+':'+add0(s);
	}
	function save(puid){
	 var reasonval=$("#reasoninput"+puid).val();
	 /* alert( reasonval) */
		$.post("/XiShanCloalSystem/report/updateDatadealByPuid",{"puid":puid,"reasonval":reasonval},function(data){
			alert("保存成功！")
		});
		
	}
	function deletedatadeal(puid){
		$.post("/XiShanCloalSystem/report/deleteDatadealByPuid",{"puid":puid},function(data){
			alert("删除成功");
			findresport();
			
		});
		
		}
	
	$(document).ready(function() {
		  $.post("/XiShanCloalSystem/plant/getPlantList",null,function(result){
				
			  var treeObj= $.fn.zTree.init($("#treeDemo"), setting, result);
			  var node = treeObj.getNodeByParam('id', 1);
			  treeObj.selectNode(node);
	          treeObj.setting.callback.onClick(null, treeObj.setting.treeId, node);//调用事件
			 
		 }); 
		
		setCheck();
		$("#py").bind("change", setCheck);
		$("#sy").bind("change", setCheck);
		$("#pn").bind("change", setCheck);
		$("#sn").bind("change", setCheck);
	});
	
	function testupimage(puid){
		  var oFileInput = new FileInput();
		    oFileInput.Init("txt_file", "/XiShanCloalSystem/report/uploadimage?puid="+puid);
	}
	
	    //初始化fileinput
      	var FileInput = function () {
	    var oFile = new Object();

	    //初始化fileinput控件（第一次初始化）
	    oFile.Init = function(ctrlName, uploadUrl) {
	    var control = $('#' + ctrlName);

	    //初始化上传控件的样式
	    control.fileinput({
	        language: 'zh', //设置语言
	        uploadUrl: uploadUrl, //上传的地址
	        allowedFileExtensions: ['jpg', 'gif', 'png'],//接收的文件后缀
	        showUpload: true, //是否显示上传按钮
	        showCaption: false,//是否显示标题
	        browseClass: "btn btn-primary", //按钮样式     
	        //dropZoneEnabled: false,//是否显示拖拽区域
	        //minImageWidth: 50, //图片的最小宽度
	        //minImageHeight: 50,//图片的最小高度
	        //maxImageWidth: 1000,//图片的最大宽度
	        //maxImageHeight: 1000,//图片的最大高度
	        //maxFileSize: 0,//单位为kb，如果为0表示不限制文件大小
	        //minFileCount: 0,
	        maxFileCount: 10, //表示允许同时上传的最大文件个数
	        enctype: 'multipart/form-data',
	        validateInitialCount:true,
	        previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
	        msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
	    });

	    //导入文件上传完成之后的事件
	    $("#txt_file").on("fileuploaded", function (event, data, previewId, index) {
	        $("#myModal").modal("hide");
	     
	        window.location.href = "/XiShanCloalSystem/dataManage/reportMag.jsp";  
	      
	   
	        var data = data.response.lstOrderImport;
	        if (data == undefined) {
	            toastr.error('文件格式类型不正确');
	            return;
	        }
	        //1.初始化表格
	        var oTable = new TableInit();
	        oTable.Init(data);
	        $("#div_startimport").show();
	    });
	}
	    return oFile;
	};
</script>
</head>
<body>
	<!-- 标题 -->
	<div style="background-color: #F5F5F5; padding: 2PX;">
		<h4>&nbsp;&nbsp;&nbsp;&nbsp;超标管理</h4>
	</div>
	<div class='demo' style="padding-top:48px; padding-left:30px;padding-right:30px;">
		<div>
			<!--未弹出对话框之前显示的界面-->
			<table style="width: 100%;">
				<tr>
					<!-- 左边分厂选择 -->
					<td>
						<!-- ztree部分 -->
						<ul id="treeDemo" class="ztree" style="margin:5px 15px 0px 10px; height: 450px; border-color: #CCCCCC;"></ul>
					</td>
					<!-- 右边内容部分 -->
					<td>
						<p align="left">
							<button class="btn btn-default btn-sm" onclick="findresport()">查询</button>
							&nbsp; <input value="清空" onClick="emptyMessage()" type="reset" 
								class="btn btn-sm btn-primary">
						</p> <!-- 标题下面一个表格 -->
						<!-- 筛选框 -->
						<table class="table table-hover table-bordered">
							<tr>
								<td>时间：</td>
								<td style="text-align: left;"><input type="date"
								id="startTime"	class="input">-<input type="date" id="endTime" class="input"></td>
							</tr>
							<tr>
								<td>录入人：</td>
								<td style="text-align: left;"><input type="text" id="username"
									class="input"></td>
							</tr>
						</table>
						<table class="table table-hover table-bordered" id="tableSort">
							<thead>
							<!-- 第一行，一系列属性 -->
							<tr class="tab-head">
								<th>序号</th>
								<th>指标名</th>
								<th>预警值</th>
								<th>录入值</th>
								<th>超标额</th>
								<th>超标原因</th>
								<th>录入人</th>
								<th>部门</th>
								<th>时间</th>
								<th>操作</th>
							</tr>
							</thead>
							<tbody>
							<!-- 第二行，一些写死的数据，后面是根据传入数据进行输出，此处应有jsp代码 -->
						<!-- 	<tr>
								<td>001</td>
								<td>2018年8月23日</td>
								<td>张三</td>
								<td>一分厂</td>
								<td>200</td>
								<td>210</td>
								<td>黄药</td>
								<td>因煤质问题，污水成分变化，黄药使用过多</td>
								<td>因煤质问题，污水成分变化，黄药使用过多</td>
								<td>
									<button class="btn btn-primary btn-sm">删除</button>
								</td>
							</tr> -->
							<!-- 第三行，一些写死的数据，后面是根据传入数据进行输出，此处应有jsp代码 -->
						<!-- 	<tr>
								<td><input type="checkbox"></td>
								<td>002</td>
								<td>2018年8月24日</td>
								<td>李四</td>
								<td>二分厂</td>
								<td>100</td>
								<td>110</td>
								<td>红药</td>
								<td>假设一个问题，红药使用过多</td>
								<td>
									<button class="btn btn-primary btn-sm">删除</button>
								</td>
							</tr> -->
							</tbody>
						</table> <!-- 三个按钮 -->
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
		<!-- 模态框（Modal） -->
<!-- <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="form-group">
   <input id="itemImagers" name="itemImagers" type="file" multiple class="file" data-overwrite-initial="false" data-min-file-count="2">
 </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">提交更改</button>
            </div>
        </div>/.modal-content
    </div>/.modal
</div> -->

<form>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <button class="close fileinput-remove" style="display: inline-block;" aria-label="Close" type="button"  id="closebutton">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  
                    <h4 class="modal-title" id="myModalLabel">请选择图片</h4>
                </div>
                <div class="modal-body">
                    <input type="file" name="txt_file" id="txt_file" multiple class="file-loading" />
                </div></div>
        </div>
    </div>
</form>
</div>
	</div>
	<script>
		var demobg = document.querySelector(".demo-bg");
		var demotxt = document.querySelector(".demo-txt");
		function openDialog() {
			demotxt.style.display = "block";
			demobg.style.display = "block";
		}
		function closeDialog() {
			demotxt.style.display = "none";
			demobg.style.display = "none";
		}
	</script>
	
</body>
</html>