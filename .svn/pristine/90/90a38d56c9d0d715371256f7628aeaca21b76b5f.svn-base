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
<title>用户密码找回页面</title>
<link rel="stylesheet" href="../css/style.css" />
<script src="../js/jquery-1.8.3.js"></script>
<script src="../js/common.js"></script>
<!--背景图片自动更换-->
<script src="../js/supersized.3.2.7.min.js"></script>
<script src="../js/supersized-init.js"></script>
<!--表单验证-->
<script src="../js/jquery.validate.min.js"></script>

<style type="text/css">
.demo {
	width: 500px;
	margin: 20px auto;
}
#num{
   font-size: 20px;
   
}
</style>
</head>
<body>

	<div class="login-container">
		<h1>用户密码找回页面</h1>
		<div class="connect">
			<p>请正确输入</p>
			<p style="color:red">${message1 }${message2 }</p>
		</div>

		<form action="../../user/retieve" method="post" id="loginForm" id="login">
			<div>
				<input type="text" name="userName" class="username"
					placeholder="用户名" autocomplete="off" />
			</div>
			<div>
				<input type="text" name="telephone" class="phone_number"
					placeholder="手机号" autocomplete="off" id="number"/>
			</div>	 
			<div id="num">
			<input type="text" id="nums" name="nums" placeholder="验证码" style="width: 50px;height:38px;background-color:#999" >&nbsp;&nbsp;&nbsp;&nbsp;${num }
			&nbsp;&nbsp;<a href="../../user/verify"> 点击换一张</a>
			</div>	
			<button id="submit" type="submit">提交</button>
		</form>
		<a href="./reg.jsp">
			<input type="button" value="还没有账号?" style="width: 300px;background-color:#0CF"/>
		</a>
		</p>
		<!--超链接到产生验证码Controller  -->
		<a href="javascript:history.go(-1)"> 
				<input type="button" value="返回上一页" style="width: 150px;height:42px;background-color:#0F3" />
		</a>
		<a href="../../index.jsp" >
			<input type="button" value="返回主页" style="width: 150px;background-color:#FC0"/>
		</a>
	</div>
</body>
</html>
