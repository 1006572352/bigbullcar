<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>大牛二手车用户注册页面</title>
<link rel="stylesheet" href="../css/style.css" />

</head>
<body>

	<div class="register-container">
		<h1>大牛二手车用户注册页面</h1>

		<div class="connect">
			<p>请您如实填写信息</p>
			<p style="color:red">${messagess }</p>
		</div>

		<form action="../../user/add" method="post" id="registerForm">
			<div>
				<input type="text" name="userName" class="username"
					placeholder="您的用户名" autocomplete="off" />
			</div>
			<div>
				<input type="password" name="password" class="password"
					placeholder="输入密码" oncontextmenu="return false"
					onpaste="return false" />
			</div>
			<div>
				<input type="password" name="confirm_password"
					class="confirm_password" placeholder="再次输入密码"
					oncontextmenu="return false" onpaste="return false" />
			</div>
			<div>
				<input type="text" name="telephone" class="phone_number"
					placeholder="输入手机号码" autocomplete="off" id="number" />
			</div>
			<div>
				<input type="email" name="email" class="email" placeholder="输入邮箱地址"
					oncontextmenu="return false" onpaste="return false" />
			</div>

			<button id="submit" type="submit">注 册</button>
		</form>
		<!--超链接到产生验证码Controller  -->
		<a href="../../user/clear">
			<input type="button" value="已经有账号？" style="width: 150px;background-color:#9C3"/>
		</a>
		<a href="../../index.jsp" >
			<input type="button" value="返回主页" style="width: 150px;background-color:#FC0"/>
		</a>
	</div>


	<script src="../js/jquery-1.8.3.js"></script>
	<script src="../js/common.js"></script>
	<!--背景图片自动更换-->
	<script src="../js/supersized.3.2.7.min.js"></script>
	<script src="../js/supersized-init.js"></script>
	<!--表单验证-->
	<script src="../js/jquery.validate.min.js"></script>

</body>
</html>
