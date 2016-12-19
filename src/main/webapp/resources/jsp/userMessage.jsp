<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminSelectMessage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  	 <style type="text/css">
	 body{
	 	 background-image:url("${pageContext.request.contextPath}/resources/images/adminback.jpg");
		background-attachment: fixed;
		background-repeat: no-repeat;
		background-size: cover;
		-moz-background-size: cover;
		-webkit-background-size: cover;
	 }
	 h1{
	 	text-align:center
	 }
  	table{
  		font-family: "microsoft yahei";
  		margin: 20px auto;
  		width: 900px;
  		text-align: center;
  		border-collapse: collapse;
  		text-align: center;
  	}
  	table tr th{
			background: #97A2A5;
			color: white;
	}
	table tr:nth-child(odd){
		background: lightgoldenrodyellow;
	}
	table tr:hover{
		background: lightgrey;
	}
	table tr td a{
		text-decoration:none;
		color:gray
	}
	table tr td a:hover{
		color:orange;
	}
	.return{
		text-decoration:none;
		display:block;
		color:gray;
		text-align:center;
	}
	.return:hover{
		color:orange;
	}
  </style>
  <body>
    <h1>客户留言信息</h1>
 
    <table border="1">
       <tr>
         <td>编号</td>
         <td>留言内容</td>
         <td>回复内容</td>
         <td>留言时间</td>
       </tr>
       <c:forEach items="${message }" var="mes">
       <tr>
         <td>${mes.mesid }</td>
         <td>${mes.mescontent }</td>
         <td>${mes.recontent}</td>
         <td>${mes.mestime }</td>
       </tr>
       </c:forEach>
    </table>
     <a href="javascript:history.go(-1);" class="return">&lt;返回</a>
  </body>
</html>
