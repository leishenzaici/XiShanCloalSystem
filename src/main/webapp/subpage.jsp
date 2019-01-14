<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<!-- 中文语言 -->
<html lang="zh-CN">
<head>
<!-- 编码方式 -->
<meta charset="utf-8">
<!-- 适配各种频幕 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 标题 -->
<title>污水处理数据信息管理系统</title>
<!-- Bootstrap CSS -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
</head>
<!-- 整体 -->
<frameset rows="70px,80%,40px" frameborder="no">
	<!-- 头部的页面 -->
	<frame src="top.html" name="top" />
	<!-- 下部的页面 -->
	<frameset cols="200px,80%" frameborder="no">
		<!-- 左边的菜单 -->
		<frame src="view.jsp" name="left" />
		<!-- 右边的欢迎页面 -->
		<frame src="home.jsp" name="right" />
	</frameset>
	<!-- 底边页面 -->
	<frame src="footer.jsp" name="foot" />
</frameset>
</html>