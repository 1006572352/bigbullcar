<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'loginOut.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Refresh" content="3,index.jsp" />


<!-- <link href="http://cdn.staticfile.org/twitter-bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet"> -->

<style>
button {
	background:  #67d1c9 repeat-x;
	padding-top: 3px;
	border-top: 1px solid #708090;
	border-right: 1px solid #708090;
	border-bottom: 1px solid #708090;
	border-left: 1px solid #708090;
	width: auto;
	height: 60.18px;
	font-size: 20px;
	cursor: hand;

}
.container{
	margin-left:20%;
	margin-top:10%;
}
h1{
   font-family: Microsoft YaHei;
	margin-left:20%;
	margin-top:10%;
}
</style>

<script type="text/javascript">
	//初始化变量
	var num = 3;
	var timer;
	//定义开始倒计时函数

	timer = setInterval("minus()", 1000);

	function minus() {
		--num;

		//显示倒计时数字在Div块里
		var numDiv = document.getElementById("numDiv");
		numDiv.innerHTML = num +"秒后自动返回主页面,如果浏览器没有自动跳转页面请点击本按钮..";
		
	}
</script>


</head>

<body>
		<!-- 注销用户登录,销毁session  -->
	<%@ page import="java.util.*"%>
	<%
		
		session.invalidate();
	%>


	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<form action="index.jsp">
					<button type="button" id="numDiv" class="btn btn-lg btn-success"
						onclick="this.form.submit()">3秒后自动返回主页面,如果浏览器没有自动跳转页面请点击本按钮..</button>
				</form>
				<form action="./user/clear">
					<button type="button" class="btn btn-lg btn-info"
						onclick="this.form.submit()">重新登录</button>
				</form>
			</div>
		</div>
	</div>





	<h1>注销成功</h1>
</body>
</html>
