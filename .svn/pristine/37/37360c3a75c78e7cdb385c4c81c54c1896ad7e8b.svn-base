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
    
    <title>卖车信息上传成功页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

 <style type="text/css">
 body {
 background-image:url("${pageContext.request.contextPath}/resources/images/1.jpg") ;
 background-attachment:fixed;
 background-repeat:no-repeat;
 background-size:cover;
 -moz-background-size:cover;
 -webkit-background-size:cover;
} 
#table{
	font-weight:bold;
     font-size:24px;
    width: 620px;
	margin:100px auto;
	
}
tr{
   text-align: center;
   line-height:30px;
}
div{
text-align: center;
}
</style>
  </head>
  
  <body>

  <table border="1" id="table" class="table">
     <tr>
       <td colspan="2" align="center" style="color:#F30"> <h3>用户上传信息</h3></td>   
     </tr>
     <tr>
       <td> 用户名：</td>
       <td>${user.userName}</td>
     </tr>
     <tr>
       <td> 手机号:</td>
       <td>${user.telephone}</td>
     </tr> 
      <tr>
       <td>邮箱：</td>
       <td>${user.email }</td>
     </tr>     
     <tr><td>车辆品牌：</td><td>${newcarmessage.carbrand }</td></tr>
     <tr><td>车辆类型：</td><td>${newcarmessage.cartype }</td></tr>
     <tr><td>车辆颜色：</td><td>${newcarmessage.carcolor }</td></tr>
     <tr><td>车辆价格(万)：</td><td>${newcarmessage.carprice }</td></tr>
     <tr><td>行驶里程(KM)：</td><td>${newcarmessage.carmileage }</td></tr>
     <tr><td>购车年龄(年)：</td><td>${newcarmessage.carage }</td></tr>
     <c:forEach var="item" varStatus="status" begin="1" end="${picnum-1 }">

  <tr><td colspan="2"><img src="./resources/images/zbz-images/${newcarmessage.carphoto }.${status.index}.jpg" width="600px" height="400px"/></td><td></td></tr>
</c:forEach>
     
      <tr>
       <td rowspan="2" colspan="1" align="center"> <a href="javascript:history.go(-1)"> 
		<input type="button" value="返回上一页" style="width: 150px;height:42px;background-color:#9C3" />
	  </a></td>
	  <td rowspan="2" colspan="1" align="center" >
	    <a href="./index.jsp"> 
		<input type="button" value="返回主页" style="width: 150px;height:42px;background-color:#9C3" />
	  </a>
	  </td>
     </tr>
  </table>
  <p>

  </body>
</html>
