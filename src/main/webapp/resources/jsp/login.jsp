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
<title>大牛二手车用户登录页面</title>
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
   font-size: 30px;
   
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		var leftNum = Math.floor(Math.random() * 10);
		var rightNum = Math.floor(Math.random() * 10);
		$("#leftNum").text(leftNum);
		$("#rightNum").text(rightNum);
		$("#chkNum").blur(function() {
			var num = $(this).val();
			if (num == leftNum + rightNum) {
				$("#chkNum").val("GOOD");
			} else {
				leftNum = Math.floor(Math.random() * 10);
				rightNum = Math.floor(Math.random() * 10);
				$("#leftNum").text(leftNum);
				$("#rightNum").text(rightNum);
				$("#chkNum").val("请输入计算结果");
			}       
		});
		$("#chkNum").focus(function(){			
			$("#chkNum").val("");
		});
		//键盘事件keypress，敲击回车键进行表单提交,keyCode的数值代表不同的键盘按键
		//JavaScript需要区分keyCode(IE)和which(FF)的兼容性
		$(document).keypress(function(input) {
			//alert(input.keyCode); 
			//参数：input 为键盘输入对象，该对象有个属性keyCode 代码键盘输入的键
			if (input.keyCode == 13) {
				$("#login").submit();
			}
		});
	});
</script>

</head>
<body>

	<div class="login-container">
		<h1>大牛二手车用户登录页面</h1>
		<div class="connect">
			<p>欢迎您的到来</p>
			<p style="color:red">${message }</p>
			<p style="color:yellow">${messages }</p>
		</div>

		<form action="../../user/login" method="post" id="loginForm" id="login">
			<div>
				<input type="text" name="userName" class="username"
					placeholder="用户名" autocomplete="off" value="${userName }"/>
			</div>
			<div>
				<input type="password" name="password" class="password"
					placeholder="密码" oncontextmenu="return false"
					onpaste="return false" value="${password }"/>
			</div>
			<div id="num" name="leftNum"><span id="leftNum"></span>+<span id="rightNum" ></span>=
			<input style="width: 175px;" type="text" id="chkNum" value="请输入计算结果"  name="input"/></div>	 	
			<button id="submit" type="submit">登 陆</button>
		</form>
		<a href="./reg.jsp">
			<input type="button" value="还没有账号?" style="width: 300px;background-color:#0CF"/>
		</a>
		</p>
		<!--超链接到产生验证码Controller  -->
		<a href="../../user/verify">
			<input type="button" value="密码找回" style="width: 150px;background-color:#939"/>
		</a>
		<a href="../../index.jsp" >
			<input type="button" value="返回主页" style="width: 150px;background-color:#FC0"/>
		</a>
	</div>
</body>
</html>
