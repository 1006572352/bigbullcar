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
    
    <title>My JSP 'adminUpdate.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/jquery-1-8.3.js" ></script>
	<script>
		
	  	$('input[class="status"]').blur(function(){
		  		alert(1);
	  	})
		  	
	</script>
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
  <h1>修改<span>${username }</span>车辆的信息</h1>
  	 <sf:form method="post" modelAttribute="carMessage" >
  	 <table border="1">
  	 <tr>
       <td>车型</td>
       <td><sf:input type="text" path="cartype" value="${car.cartype }"/></td>
     </tr>
     <tr>
       <td>品牌</td>
       <td><sf:input type="text" path="carbrand" value="${car.carbrand }"/></td>
     </tr>
    
     <tr>
       <td>价格</td>
       <td><sf:input type="text" path="carprice" value="${car.carprice }"/></td>
     </tr>
     
     <tr>
       <td>颜色</td>
       <td><sf:input type="text" path="carcolor" value="${car.carcolor }"/></td>
     </tr>
     <tr>
       <td>里程</td>
       <td><sf:input type="text" path="carmileage" value="${car.carmileage }"/></td>
     </tr>
     <tr>
       <td>车龄</td>
       <td><sf:input type="text" path="carage" value="${car.carage }"/></td>
     </tr>
     <tr>
       <td>状态</td>
       <td><sf:input type="text" path="carstate" value="${car.carstate }"/></td>
     </tr>
       <tr>
       <td colspan="2"><input type="submit" value="修改"></td>
     </tr>
    </table>
     <a href="javascript:history.go(-1);" class="return">&lt;返回</a>
  	 </sf:form>
 
    
  </body>
  
</html>
