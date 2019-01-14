<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<c:set var="baseurl" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<!-- ä¸­æè¯­è¨ -->
<html lang="zh-CN">
<head>
<!-- ç¼ç æ¹å¼ -->
<meta charset="utf-8">
<!-- æ é¢ -->
<title>西山煤电</title>
<!-- å¯¼å¥elegantæ ·å¼åº -->
<link rel="stylesheet" href="css/elegant-icons-style.css">
<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">	
<!-- å¯¼å¥jQuery -->
<script src="js/jquery-1.11.3.min.js"></script>
<!-- èªå·±å®ä¹çjsï¼ç¨æ¥å®ç°åè¡¨åè½ -->
<script type="text/javascript">

$(function(){ 
	$('.list .show dd').show('slow');	
    $('.list dl dt').click(function(){
		if($(this).hasClass('la')){
			$(this).parent('dl').children('dd').slideUp();
			$(this).css({background:'url(images/icon.png) no-repeat 0 -56px' }); 
			$(this).removeClass("la");              
		} else {
			$(this).parent('dl').children('dd').slideDown();
			$(this).css({background:'url(images/icon.png) no-repeat 0 -86px'}); 
			$(this).addClass("la");              
		}
		})
    });
	//侧边栏箭头的jQuery
	$(function() {
				$("#list dt").click(function() {
			$("#list dt").removeClass("active");
					$(this).addClass("active");
			$(this).children(".glyphicon").toggleClass("glyphicon-menu-right glyphicon-menu-down");
			$(this).siblings().children("a").click(function(){
				$("a").removeClass("red");
				console.log("点击")
				$(this).addClass('red');
			})
			})
		});
</script>
<!-- èªå·±å®ä¹çæ ·å¼é -->
<style type="text/css">
@charset "utf-8";

* {
	margin: 0;
	padding: 0;
}

div#menu {
	width: 200px;
	float: left;
}

div#content {
	background-color: #379846;
	float: left;
}

#menu {
	font: 16px Verdana, Geneva, sans-serif;
	background-color: #F5F5F5;
}

h1 {
	letter-spacing: 2px;
	width: 200px;
	font-size: 20px;
	color: white;
	text-align: center;
	margin: 17px 0px;
}

a {
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

.list dl {
	font-size: 16px;
	line-height: 120%;
	font-weight: normal;
	cursor: pointer;
	background-color: #F5F5F5;
	border-bottom: 1px solid #CCCCCC;
}

.list dl dt {
	color: black;
	padding: 0px 20px 3px 20px;
}

.arrow {
	float: right;
	padding-right: 20px;
}

.list dl dt i {
	margin-right: 10px;
}

.list dl dd {
	padding: 3px 0px 3px 40px;
	display: none;
	font-size: 14px;
	background-color: #FFFFFF;
}

.list a {
	color: black;
}
.red {
	color:royalblue !important;
	font-weight: bolder;
	}
#menu small{
	display: inline-block;
	margin: 0 20px;
}	
#menu div img{
	display: inline-block;
	width: 20%;
	height: 20%;
	margin: 0 3px;
}
.glyphicon{
	float: right;
}
/*#list dt.active .glyphicon-menu-right{
	transform: rotate(90deg);
}*/
</style>
</head>
<!-- ä¸»ä½ï¼å®ä¸ªé¢è² -->




<body>
	<!-- æ´ä¸ªmenudivåæ»¡body -->
	<div id="menu" class="aside">

		<!-- <div style="margin-top: 16px;">
			<a href="me.html" target="right" style="color: #000000;">
				<img src="imgs/person.jpg" class="img-circle img-responsive" alt="Responsive image">
				<small>个人信息</small>
			</a>
		</div> -->
		<!-- ä¸æ¡çº¿ -->
		<hr>
		<!-- å®½åº¦æ¯200 -->
		<div style="width: 200px" class="list" id="list">
			<c:forEach var="per" items="${permissioninfo}">
				<c:if test="${per.type=='menutop' }">
					<dl> 
						<c:if test="${per.permissionid=='050' }">
							<c:set var="class_name" value="icon_house"></c:set></font>
						</c:if> 
						<c:if test="${per.permissionid=='080' }">
							<c:set var="class_name" value="icon_datareport_alt"></c:set>
						</c:if> 
						<c:if test="${per.permissionid=='001' }">
							<c:set var="class_name" value="icon_datareport_alt"></c:set>
						</c:if>
						<c:if test="${per.permissionid=='070' }">
							<c:set var="class_name" value="icon_datareport_alt"></c:set>
						</c:if> 
						<c:if test="${per.permissionid=='013' }">
							<c:set var="class_name" value="icon_clipboard"></c:set>
						</c:if>
						<c:if test="${per.permissionid=='060' }">
							<c:set var="class_name" value="icon_cloud_alt"></c:set>
						</c:if> 
					 
						<dt>
							<i class="${class_name}"></i>${per.name }<i class="glyphicon glyphicon-menu-right"></i>
						</dt>
						<c:forEach var="per1" items="${permissioninfo}">
							<c:if test="${per1.parentid==per.permissionid and per1.type=='menu'}">
								<dd>
									<a href="${baseurl }/${per1.url}" target="right">${per1.name }</a>
								</dd>
							</c:if>
						</c:forEach>					
					</dl>
				</c:if>
			</c:forEach>
		</div>
	</div>
</body>
</html>