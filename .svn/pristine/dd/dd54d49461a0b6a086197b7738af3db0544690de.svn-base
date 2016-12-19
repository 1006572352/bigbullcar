<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>管理员登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="./resources/css/adminLogin.css">
</head>

<body>
	<div class="login">
		<h2>大牛二手车后台管理系统</h2>
		<div class="login-top">
			<h1>管理员登录</h1>
			<form action="../bigbullcar/admin/adminLogin" method="POST" id="loginForm">
				<input type="text" class="adminName" name="adminName" placeholder="帐号"
					autocomplete="off" /> 
				<input type="password" class="aPassword" name="aPassword" placeholder="密码"  />
			<div class="forgot">
				<input type="submit" value="登录">
			</div>
			</form>
		</div>

	</div>


</body>
</html>
