<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jpzbz.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		body{
	
	background:url(./resources/images/buycarbg.jpg) no-repeat;
	background-size:1340px ;
	}
	
	img{
	border:solid 3px gray;
	}
	
	.img{
	border:solid 3px red;}
	
	li {
	list-style-type:none;
	margin:20px 40px;}
	ul{
	float:left;
	magrin:20px 40px;}
		a{
			text-decoration:none;
			font-size:35px;}
			h1{
			text-align:center;}
				.over{
			color:#900;
			font-weight:bold;
		}
	</style>
	<script type="text/javascript" src="./resources/js/jquery-1.8.3.js"></script>
	  <script type="text/javascript">
  $(function(){

  $("a").mouseover(function(){
  $(this).addClass("over");
  });
  $("a").mouseout(function(){
  $(this).removeClass("over");
  });
   $("img").mouseover(function(){
  $(this).addClass("img");
  });
  $("img").mouseout(function(){
  $(this).removeClass("img");
  });
  });
  </script>

  </head>
  
  <body>
     <table width="1340px">
					<tr>
						<td  width="20%">
							<img src="./resources/images/logo.png"  width="150px" height="100px"/>
						</td>
						<td width="10%"><a href="user/userview?userName=${userName }" target="new" style="font-size:24px;">${userNames }</a></td>
						<td><a href="./index.jsp" target="new">首页</a></td>
						<td><a href="bigbullcar/buycar" target="new">买车</a></td>
						<td><a href="bigbullcar/salecar" target="new">卖车</a></td>
						<td><a href="bigbullcar/customercard" target="new">客服</a></td>
						<td>
							<a href="./resources/jsp/reg.jsp" target="new" class="indexzbz">注册</a>
						</td>
						<td>
								<c:if test="${userName==null }"><a href="./user/clear" target="new" class="indexzbz">登录</a></c:if>
						</td>
					
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
				<p><h1>热门竞拍车辆</h1></p>
					<c:forEach items="${carIdList }" var="ul" >
			<ul >
			<li><a href="auction/wyjp/${ul }"><img src="./resources/images/zbz-images/${ul }.1.jpg" width="500px" height="340px"></a></li>
			<li>
			<a href="auction/wyjp/${ul }" style="color:#900;">我要竞拍</a>
			</li>
			</ul>
			</c:forEach>
  </body>
</html>
