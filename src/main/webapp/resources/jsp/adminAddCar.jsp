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
    
    <title>My JSP 'adminAddCar.jsp' starting page</title>
    
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
  	
  	*{
  		margin: 0;
  		padding: 0;
  	}
 	body{
 	 background-image:
		url("${pageContext.request.contextPath}/resources/images/adminback.jpg");
		background-attachment: fixed;
		background-repeat: no-repeat;
		background-size: cover;
		-moz-background-size: cover;
		-webkit-background-size: cover;
		font-family:"microsoft yahei"
  	}
  	span{
  		font-weight:900;
  		color:orange;
  	}
  	h1{
  		text-align:center;
  	}
  	table{
  		font-family: "microsoft yahei";
  		margin: 10px auto;
  		width: 500px;
  		text-align: center;
  		border-collapse: collapse;
  	}
  	table tr{
  		height: 30px;
  		line-height: 30px;
  	}
  	table tr:hover{
  		background: lightgrey;
  	}
  	table tr td input{
  		border: 0;
  		width: 100%;
  		height: 100%;
  		color:orange;
  		font-weight:800;
  	}
	 table tr td input:hover{
		background: lightgrey;
  	}
	table tr:nth-last-child(1) input{
		width: 200px;
		height: 30px;
		background: lightgoldenrodyellow;
		border: 1px solid orange;
		padding: 1%;
		border-radius: 10px;
	}
	table tr:nth-last-child(1):hover{
		background:lightgoldenrodyellow;
	}
  	
  </style>
  
  <body>
  <h1>增加车辆</h1>
  	 <sf:form  method="POST"  addAttribute="carMessage" action="admin/adminAddCar">
  	 <table border="1">
  	 <tr>
       <td>车型</td>
       <td><input type="text" path="carType" value=""/></td>
     </tr>
     <tr>
       <td>品牌</td>
       <td><input type="text" path="carBrand" value=""/></td>
     </tr>
    
     <tr>
       <td>价格</td>
       <td><input type="text" path="carPrice" value=""/></td>
     </tr>
     
     <tr>
       <td>颜色</td>
       <td><input type="text" path="carColor" value=""/></td>
     </tr>
     <tr>
       <td>里程</td>
       <td><input type="text" path="carMileage" value=""/></td>
     </tr>
     <tr>
       <td>车龄</td>
       <td><input type="text" path="carAge" value=""/></td>
     </tr>
     <tr>
       <td>状态</td>
       <td><input type="text" path="carState" value=""/></td>
     </tr>
       <tr>
       <td colspan="2"><input type="submit" value="添加"></td>
     </tr>
    </table>
  	 </sf:form>
 
    
  </body>
</html>
