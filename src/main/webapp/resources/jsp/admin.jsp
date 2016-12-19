<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    
    <title>管理员管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <style type="text/css">
  *{
  	padding:0;
  	margin:0;
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
  
 	 #table {
		width: 750px;
		margin: 10px auto;
		text-align:center;
		border-collapse: collapse;
	}
 	#table tr th{
		background: #97A2A5;
		color: white;
	}
	 #table tr{
	 	height:30px
	 }
	#table tr:nth-child(odd){
		background: lightgoldenrodyellow;
	}
	#table tr:nth-last-child(1){
		background: #eee;
	}
	#table tr:hover{
		background: lightgrey;
	}
	#table a{
		text-decoration: none;
		color: gray;
		display: block;
	}
	#table a:hover{
		color: orange;
	}
	#table td a{
		display:inline-block;
	}
  h1{
 	 text-align:center;
 	 margin-top:10px
  }
  
  #guanli{
    width: 80px;
  }
  form{
  text-align:center;
  }
   input:nth-child(1){
  	
  	background: white url(${pageContext.request.contextPath}/resources/images/sousuo.png) right center no-repeat;
  	background-size:10%;
  	width:200px;
  	height:30px
  }
   input:nth-child(2){
   	width:80px;
  	height:30px
   }
  </style>
  </head>
  
  <body>
   <h1>大牛二手车用户信息</h1>
    <form action="admin/adminSousuo">
    <table border="1" id="table" class="table">
         <tr>
           <td>用户编号</td>
           <td>帐号</td>
           <td>密码</td>
           <td>邮箱</td>
           <td>电话</td>
           <td id="guanli">管理</td>
         </tr>
      <c:forEach items="${userList }" var="user" begin="${start }" end="${end }">
		 <tr>
		<td>${user.userid }</td>
		<td>${user.userName }</td>
		<td>${user.password }</td>
		<td>${user.telephone }</td>
		<td>${user.email }</td>
		<td>
		<a href="admin/adminSelectMessage/${user.userName }">留言</a>
		<a href="admin/adminLook/${user.userName }">车辆</a>
		<%-- <a href="admin/deleteuser/${user.userName }"></a> --%>
		<a href="admin/deleteuser/${user.userName }" onclick="window.confirm('确定删除吗？')?this.href='admin/deleteuser/${user.userName }':this.href='javascript:void()';">删除</a>
		</td>
		 </tr>
	   </c:forEach>
	   <tr><td colspan="6"><a href="admin/adminLogin${curpage-1 }">上一页</a>
	   <a href="admin/adminLogin${curpage }">${curpage } / ${pagenum }</a>
	   <a href="admin/adminLogin${curpage+1 }">下一页</a>
	   </td></tr>
    </table>
      <input type="text" placeholder="查询" name="userName"/>
      <input type="submit" value="查询用户"/>
    </form>
  </body>
</html>
