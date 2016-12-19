<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>页面出错了</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	body{
		background:url(./resources/images/allerr.jpg);
		font-size:32px;
		color:#900;
	}
	#p0{
	margin:100px 200px;}
	#p1{
	margin:100px 400px;}
	#p2{
	margin:100px 600px;}
	#p3{
	margin:100px 400px;}
	input{
	border:0px;
	color:#900;
	font-size:30px;}
	a{
	text-decoration:none;
	color:#900;
	}
	</style>
	<script type="text/javascript" src="./resources/js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
	$(function(){

	$("#b1").click(function(){
$("#exception").css("display","");
	});
		$("#b1").dblclick(function(){
$("#exception").css("display","none");
	});
	});
	</script>

  </head>
  
  <body>
  <p id="p0">抱歉，所需资源迷路了···········</p>
  <p id="p1">检查网络··试试^_^</p>
  <p id="p2"><input type="button" value="我是程序猿··试试@_@" id="b1"/></p>
   <p id="exception" style="display:none; font-size:20px;">${exception.message } </p>
  <p id="p3"><a href="./index.jsp">----点我返回首页----</a></p>
  
  </body>
</html>
