<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="DAN">

<title>登录</title>

<!-- Bootstrap CSS -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="css/elegant-icons-style.css" rel="stylesheet" />
<!-- Custom styles -->
<link href="css/style.css" rel="stylesheet">
<script type="text/javascript">
	var contextPath = "${pageContext.request.contextPath}";
</script>
<script src="<%=path %>/js/jquery-1.11.3.min.js"></script>
<script src="<%=path %>/js/index/indexHeader0.js"></script>

</head>

<body class="login-img3-body"
	style="background-image: url(imgs/index_img2.jpg);">

	<div class="container">

		<form class="login-form" type="post" id="el_form">
			<div class="login-wrap">
				<h2 class="text-center">西山煤电</h2>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>
					<input type="text" class="form-control" placeholder="Username" name="username" id='form_username'
						autofocus>
				</div>
				<span style="color: red;" id="msg"></span>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_key_alt"></i></span>
					<input type="password" class="form-control" placeholder="Password" name="password" id='form_password'>
				</div>
				<span style="color: red;" id="msg2"></span>
				<label class="checkbox"> <input type="checkbox"
					value="yes"  name="rememberMe" id="form_isRememberme" style="margin-left: 2px;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;记住密码
				</label>
				<div class="btn btn-primary btn-lg btn-block"  onclick='login()' style="color:white;">确认</div> 
				<!-- <button    onclick='login()'>确认</button> -->
				<button class="btn btn-info btn-lg btn-block" type="submit"
					href="index.html">取消</button>
			</div>
		</form>
	</div>
	<script>
		var userName=document.getElementById("form_username");
		var passWord=document.getElementById("form_password");
		var Reg=/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;   //身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X 
		var i=0;
		userName.onblur=function(){
				var msg=document.getElementById("msg");
				
				if(userName.value=="" || userName.value==null){
					msg.innerHTML="用户名不能为空!";
				}else{
					if(Reg.test(userName.value)){
						msg.innerHTML="";
						return i=1;
					}else{
						msg.innerHTML="请输入正确的身份证号!";
					}
				}
			}
		passWord.onblur=function(){
				var msg2=document.getElementById("msg2");
				if(passWord.value=="" || passWord.value==null){
					msg2.innerHTML="密码不能为空！";
				}else{
					msg2.innerHTML="";
					return i=1;
				}
			}
	</script>
</body>
</html>
