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
    
    <title>查看</title>
    
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
  <h1>用户车辆信息</h1>
 
    <table border="1">
       <tr>
         <td>车辆编号</td>
         <td>车型</td>
         <td>品牌</td>
         <td>价格</td>
         <td>颜色</td>
         <td>里程</td>
         <td>车龄</td>
         <td>状态</td>
         <td>管理</td>
       </tr>
       <c:forEach items="${carMessageList }" var="car">
       <tr>
         <td>${car.carid }</td>
         <td>${car.cartype }</td>
         <td>${car.carbrand }</td>
         <td>${car.carprice }</td>
         <td>${car.carcolor }</td>
         <td>${car.carmileage }</td>
         <td>${car.carage }</td>
         <td>${car.carstate }</td>
         <td><a href="admin/adminUpdateCar/${car.carid }">&nbsp;修改</a>
        
        
         </td>
       </tr>
       </c:forEach>
       
    </table>
     <a href="javascript:history.go(-1);" class="return">&lt;返回</a>
  </body>
  <script src="../js/jquery-1.8.3.js" type="text/javascript"></script>
  <script type="text/javascript">
  	function del(){
  		alert(1);
  	}
  </script>
</html>
