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
    
    <title>My JSP 'BuyCarzbz.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	body{
	
	background:url(./resources/images/buycarbg.jpg) no-repeat;
	background-size:1340px 1300px;
	}
	
	img{
	border:solid 3px gray;
	}
	
	.img{
	border:solid 3px red;}
	
	li {
	list-style-type:none;
	margin:1px;}
	ul{
	float:left;}
		a{
			text-decoration:none;
			font-size:35px;}
			form{
			width:1320px;
			text-align:center;
			padding:10px;
			font-size:28px;
			height:70px;}
			select{
			width:120px;
			margin: 0 10px 0  10px ;
			line-height:40px;
			font-size:24px;}
			#fenyediv{
			 text-align:center; 
			height:150px;
			
			}
			#fenyeul{
			width:1000px;
			overflow:hidden;
				}
			#fenyeul li{
			margin 2px 5px 2px 5px;
				display:inline;
}
			#tupian{
			width:1340px;
			height:820px;
			}
			.over{
			color:#900;
			font-weight:bold;
		}
	</style>

	
	<script type="text/javascript" src="./resources/js/jquery-1.8.3.js"></script>
	  <script type="text/javascript">
  $(function(){

  $("select").change(function(){
 $("#form").submit();
  });
  $("select,a").mouseover(function(){
  $(this).addClass("over");
  });
  $("select,a").mouseout(function(){
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
						<td width="10%"><a href="user/userview?userName=${userName }" target="new">${userNames }</a></td>
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
			<sf:form method="get" modelAttribute="carMessage" id="form">
			
			汽车类型<sf:select path="cartype" class="choosechange">
			<sf:option value="" >全部</sf:option>
			<sf:option value="轿车">轿车</sf:option>
			<sf:option value="SUV">SUV</sf:option>
			<sf:option value="MPV">MPV</sf:option>
			<sf:option value="跑车">跑车</sf:option>
			</sf:select>
			
			汽车品牌<sf:select path="carbrand" class="choosechange">
			<sf:option value="" >全部</sf:option>
			<sf:option value="奥迪">奥迪</sf:option>
			<sf:option value="宝马">宝马</sf:option>
			<sf:option value="奔驰">奔驰</sf:option>
			<sf:option value="法拉利">法拉利</sf:option>
			<sf:option value="比亚迪">比亚迪</sf:option>
			<sf:option value="别克">别克</sf:option>
			<sf:option value="大众">大众</sf:option>
			</sf:select>
			
			行驶里程<sf:select path="carmileage" class="choosechange">
			<sf:option value="" >不限</sf:option>
			<sf:option value="5000">5000以内</sf:option>
			<sf:option value="10000">10000以内</sf:option>
			<sf:option value="30000">30000以内</sf:option>
			<sf:option value="50000">50000以内</sf:option>
			<sf:option value="80000">80000以内</sf:option>
			</sf:select>
			
			购车年限<sf:select path="carage" class="choosechange">
			<sf:option value="" >不限</sf:option>
			<sf:option value="1">1年</sf:option>
			<sf:option value="3">3年</sf:option>
			<sf:option value="5">5年</sf:option>
			<sf:option value="7">7年</sf:option>
			</sf:select>
			
			出售价格<sf:select path="carprice" class="choosechange">
			<sf:option value="" >不限</sf:option>
			<sf:option value="5">5万以内</sf:option>
			<sf:option value="15">15万以内</sf:option>
			<sf:option value="30">30万以内</sf:option>
			<sf:option value="50">50万以内</sf:option>
			<sf:option value="100">100万以内</sf:option>
			</sf:select>
			</sf:form>
			<div id="bg" >
			<div id="tupian"   >
		
			<c:forEach items="${carmessageList }" var="ul" begin="${start }" end="${end }">
			<ul >
			<li><a href="bigbullcar/buycar/${ul.carid }"><img src="./resources/images/zbz-images/${ul.carphoto }.1.jpg" width="370px" height="270px"></a></li><br/>
			<li><c:if test="${ul.carstate == 1 }"><b style="color:red">在售</b></c:if>
			<c:if test="${ul.carstate == 0 }"><b style="color:blue">已被预定</b></c:if>
			<c:if test="${ul.carstate == -1 }"><b style="color:gray">已出售</b></c:if>
			</li>
			<li>价格${ul.carprice }万</li><br/>
			</ul>
			</c:forEach>
		</div>
			<div id="fenyediv" >
			<ul id="fenyeul">
				<li>
					 <a href="bigbullcar/buycar${curpage-1 }">上一页</a>
				</li>
				<li>
					 <a href="bigbullcar/buycar${curpage }">${curpage }/${pagenum }</a>
				</li>
				
				<li>
					 <a href="bigbullcar/buycar${curpage+1 }">下一页</a>
				</li>
				
			</ul>
			</div>
		</div>
  </body>

</html>
