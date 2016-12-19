<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'wyjpzbz.jsp' starting page</title>
    
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
	margin:20px 40px;
	float:left;}
	ul{
	
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
			<ul>
  <li> <img src="./resources/images/zbz-images/${carMessage.carid }.1.jpg" width="500px" height="360px"></li>
  <li> 车辆价格：<h2>${carMessage.carprice }万</h2></li>
  <li> 当前最高竞价：<h2>${jpprice }万</h2></li>
  <li> <c:if test="${yajin == null }"> <a href="auction/yajinjp">加价竞拍</a></c:if>
   <c:if test="${yajin != null }"> <a href="auction/jiajiajp">加价竞拍</a></c:if>
   <p style="color:blue;font-size:24px;">温馨提示：每点击一次加价，默认加价1000</p></li>
   </ul>
  </body>
</html>
