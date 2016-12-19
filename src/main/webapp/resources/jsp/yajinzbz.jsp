<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'yajinzbz.jsp' starting page</title>
    
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
	color:#F0F;
	list-style-type:none;
	margin:40px 10px;
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
		#t2{
		margin:40px auto;
		}
		p{
		font-size:24px;
		}
		td{
		line-height:40px;
		font-size:24px;}
		input{
		line-height:40px;
		font-size:24px;
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
  <li><p >
   亲爱的${loginuser.userName }用户，为了防止恶意竞拍，<br/>
  需要缴纳1000元竞拍押金，如果最终<br/>
  您没有竞拍到该车,押金会自动返还给您,<br/>
  如果您恶意竞拍，却不购买，<br/>押金无法退还哦！！<br/>  </p></li>
			<li>	<table id="t2" style="margin:0;">
				<tr><td>支付宝账号</td><td><input type="text"/></td>
				<td><img src="./resources/images/zbz-images/zhifu1zbz.jpg" width="140px" height="70px"></td></tr>
				<tr><td>支付密码</td><td><input type="password"/></td>
				<td><img src="./resources/images/zbz-images/zhifu2zbz.jpg" width="140px" height="70px"></td></tr>
				<tr><td></td><td><a href="auction/jixujp">确认支付</a></td>
				<td></td></tr>
				</table></li>
 </ul>
  </body>
</html>
