<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'BuyCarPhotozbz.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	a{
			text-decoration:none;
			font-size:24px;}
	</style>
</style>
  </head>
  
  <body>
  <table bgcolor="#33FFFF" width="100%">
					<tr>
						<td  width="20%">
							<img src="./resources/images/logo.png"  width="150px" height="100px"/>
						</td>
						<td width="10%">欢迎您${userName }</td>
						<td><a href="./index.jsp" target="new">首页</a></td>
						<td><a href="bigbullcar/buycar" target="new">买车</a></td>
						<td><a href="bigbullcar/salecar" target="new">卖车</a></td>
						<td><a href="./resources/jsp/CustomerCarezbz.jsp" target="new">客服</a></td>
					
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
				车主姓名：${carmessageList.get(0).username }<br/>
				车辆价格：${carmessageList.get(0).carprice }<br/>
				购车年龄：${carmessageList.get(0).carage }<br/>
				行驶里程：${carmessageList.get(0).carmileage }<br/>
				
   <ul>
			<li><img src="./resources/images/zbz-images/${carmessageList.get(0).carphoto }.1.jpg" width="500px" height="300px"></li>
			<li><img src="./resources/images/zbz-images/${carmessageList.get(0).carphoto }.2.jpg" width="500px" height="300px"></li>
			<li><img src="./resources/images/zbz-images/${carmessageList.get(0).carphoto }.3.jpg" width="500px" height="300px"></li>
  </body>
</html>
