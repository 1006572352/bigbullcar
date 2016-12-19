<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>大牛二手车市场</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="resources/css/zhang.css">
<script type="text/javascript" src="resources/js/zhang.js"></script>

<link rel="stylesheet" type="text/css"
	href="resources/css/styleturndgl.css">

<link rel="stylesheet" href="resources/css/fenleihcc.css">
<script type="text/javascript" src="./resources/js/fenleihcc.js"></script>

<script type="text/javascript" src="./resources/js/jquery-1.8.3.js"></script>

<style type="text/css">
  *{margin:0;padding: 0;}
        #jpzbz2,#jpzbz3{border:none;}
        #jpzbz1{ z-index:9999;height:120px;width: 178px; position: absolute;top:0px;left:0px;}
#Container {
	width: 0 auto;
	margin: 0 auto; /*设置整个容器在浏览器中水平居中*/
}

#Header {
	height: 150px;
}

#logo {
	padding-left: 50px;
	padding-top: 20px;
	padding-bottom: 50px;
}

#Content {
	height: 490px;
}

#Content-Left {
	height: 470px;
	width: 390px;
	margin: 20px 70px; /*设置元素跟其他元素的距离为20像素*/
	float: left; /*设置浮动，实现多列效果，div+Css布局中很重要的*/
	position:absolute;
}

#Content-Main {
	height: 400px;
	width: 750px;
	margin: 20px; /*设置元素跟其他元素的距离为20像素*/
	float: left; /*设置浮动，实现多列效果，div+Css布局中很重要的*/
	position: absolute;
	right: 80px;
	top: 160px;
}
/*注：Content-Left和Content-Main元素是Content元素的子元素，两个元素使用了float:left;设置成两列，这个两个元素的宽度和这个两个元素设置的padding、margin的和一定不能大于父层Content元素的宽度，否则设置列将失败*/
#Goods {
	height: auto;
	margin: 0 auto;
}

#Details {
	height: 850px;
	width: 1300px;
	margin: 5px; /*设置元素跟其他元素的距离为20像素*/
	float: left; /*设置浮动，实现多列效果，div+Css布局中很重要的*/
}
input[type="submit"] {
	border:none;
	background:none;
	cursor:pointer;
	font-size: 20px;
	font-style: inherit;
	color: red;
	}

#Footer {
	height: 300px;
	margin-top: 860px;
}

#Footer-left {
	height: 300px;
	width: 300px;
	margin: 40px; /*设置元素跟其他元素的距离为20像素*/
	float: left; /*设置浮动，实现多列效果，div+Css布局中很重要的*/
}

#Footer-Main {
	height: 360px;
	width: 400px;
	margin: 50px;
	float: left;
}

#Footer-right {
	height: 400px;
	width: 400px;
	margin: 20px; /*设置元素跟其他元素的距离为20像素*/
	float: left; /*设置浮动，实现多列效果，div+css布局中很重要的*/
}
.qqover{
	color: black;
	font-weight: bold;
}

#Header a {
	text-decoration: none;
	font-size: 35px;
}

body {
 background-image:url("${pageContext.request.contextPath}/resources/images/1.jpg") ;
 background-attachment:fixed;
 background-repeat:no-repeat;
 background-size:cover;
 -moz-background-size:cover;
 -webkit-background-size:cover;
 }
</style>
<script type="text/javascript">
	$(function() {
		$(".indexzbz").mouseover(function() {
			$(this).addClass("qqover");
		});
		$(".indexzbz").mouseout(function() {
			$(this).removeClass("qqover");
		});
		//漂浮 zbz
		         var obox  = document.getElementById("jpzbz1");
            //向左走
            var timer = null,
				dirX = dirY = 1,
				speed=5;
			function fn(){ 
                //对于水平方向
                if( (obox.offsetLeft  +obox.offsetWidth) > document.documentElement.clientWidth){
                    dirX = -1;
                }
                if(obox.offsetLeft < 0 ){
					dirX = 1; 
				}
                obox.style.left = obox.offsetLeft + dirX * speed +"px";

                //对于竖直方向
                if( (obox.offsetTop + obox.offsetHeight  ) > document.documentElement.clientHeight){
                    dirY =  -1;
                }
                if(obox.offsetTop < 0 ) {
					dirY =  1;
				}
                obox.style.top = obox.offsetTop + dirY * speed +"px"; 
			};

			timer = setInterval(fn,100); //开始移动

			//鼠标移上去停止
            obox.onmouseover = function(){
				if( timer != null  )
					clearInterval(timer);
			};
			//鼠标移开继续移动
			obox.onmouseout = function(){
				timer = setInterval(fn,100);
			};
	});
</script>





</head>

<body>
	<div id="Container">
	 <div id="jpzbz1"><a href="auction/jp" id="jpzbz2"><img style="filter:alpha(opacity=50); -moz-opacity:0.6; -khtml-opacity: 0.6; opacity: 0.6;" src="./resources/images/zbz-images/jpzbz.jpg" height="120" width="178" id="jpzbz3"/></a></div>
		<div id="Header">
			<table width="1350px" height="180">
				<tr>
					<td width="300px"><img src="./resources/images/logo.png"
						width="250px" height="160px" /></td>
					<td width="90px"><img
						src="./resources/images/loginerweima.png" width="70px"
						height="70px" /></td>
					<td></td>
					<td><a href="./index.jsp" class="indexzbz"
						target="_blank">首页</a></td>
					<td><a href="bigbullcar/buycar"  class="indexzbz">买车</a></td>
					<td><a href="bigbullcar/salecar"  class="indexzbz">卖车</a></td>
					<td><a href="bigbullcar/customercard" class="indexzbz">客服</a></td>
					<%
						if (session.getAttribute("userName") == null) {
					%>
					<td><a href="./user/clear"  class="indexzbz">登录</a></td>
					<td><a href="./resources/jsp/reg.jsp"   class="indexzbz">注册</a></td>


					<%
						} else {
					%>
					<td width="150px">您好：<a style="font-size:30px;color: orange;"
						href="./user/userview?userName=${userName }" target="new"
						class="indexzbz">${userName }</a></td>
					
					<td><br>
						<form action="./resources/jsp/loginOut.jsp" method="post">
							<input class="indexzbz" type="submit" value="注销">
						</form>
					</td>

					<%
						}
					%>
					
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
			</table>

		</div>
		<div id="Content">
			<div id="Content-Left" style="background-image: url(resources/images/fenlei.jpg) ;font-size:24px"><div class="pmVerticalRightOut" id="pmVerticalRightOut">
     <div class="level"><H2 style="color:green">品牌</H2>
         <div class="levelTitle">
 <a href="bigbullcar/brand/大众-1111/1" class="i-dazhong" title="大众二手车">大众</a>
 <a href="/bigbullcar/bigbullcar/brand/丰田-1111/1" class="i-toyota" title="丰田二手车">丰田</a>
 <a href="/bigbullcar/bigbullcar/brand/本田-1111/1" title="本田二手车">本田</a>
 <a href="/bigbullcar/bigbullcar/brand/奔驰-1111/1" class="i-benz" title="奔驰二手车">奔驰</a>
 <a href="/bigbullcar/bigbullcar/brand/宝马-1111/1" class="i-bmw" title="宝马二手车">宝马</a>
 <a href="/bigbullcar/bigbullcar/brand/奥迪-1111/1" class="i-audi" title="奥迪二手车" >奥迪</a></div>
         <div class="level_">
             <div class="level_title">
  <p><h2>所有品牌</h2></p>
  <table class="tbl">
  <tbody>
     <tr>
      <td class="zm">A</td>
      <td>
      <a href="/bigbullcar/bigbullcar/brand/奥迪-1111/1" title="奥迪二手车">奥迪</a>
      <a href="/bigbullcar/bigbullcar/brand/阿斯顿·马丁-1111/1" title="阿斯顿·马丁二手车">阿斯顿· 马丁</a>
      </td>
     </tr>
     <tr>
       <td class="zm">B</td>
       <td>
       <a href="/bigbullcar/bigbullcar/brand/宝骏-1111/1" title="宝骏二手车">宝骏</a>
       <a href="/bigbullcar/bigbullcar/brand/宝马-1111/1" title="宝马二手车">宝马</a>
       <a href="/bigbullcar/bigbullcar/brand/保时捷-1111/1" title="保时捷二手车">保时捷</a>
       <a href="/bigbullcar/bigbullcar/brand/北京-1111/1" title="北京二手车">北京</a>
       <a href="/bigbullcar/bigbullcar/brand/北汽-1111/1" title="北汽二手车">北汽</a>
       <a href="/bigbullcar/bigbullcar/brand/北汽幻速-1111/1" title="北汽幻速二手车">北汽幻速</a>
       <a href="/bigbullcar/bigbullcar/brand/北汽绅宝-1111/1" title="北汽绅宝二手车">北汽绅宝</a>
       <a href="/bigbullcar/bigbullcar/brand/奔驰-1111/1" title="奔驰二手车">奔驰</a>
       <a href="/bigbullcar/bigbullcar/brand/奔腾-1111/1" title="奔腾二手车">奔腾</a>
       <a href="/bigbullcar/bigbullcar/brand/本田-1111/1" title="本田二手车">本田</a>
       <a href="/bigbullcar/bigbullcar/brand/标致-1111/1" title="标致二手车">标致</a>
       <a href="/bigbullcar/bigbullcar/brand/别克-1111/1" title="别克二手车">别克</a>
       <a href="/bigbullcar/bigbullcar/brand/宾利-1111/1" title="宾利二手车">宾利</a>
       <a href="/bigbullcar/bigbullcar/brand/比亚迪-1111/1" title="比亚迪二手车">比亚迪</a>
       </td>
      </tr>
      <tr>
       <td class="zm">C</td>
       <td>
       <a href="/bigbullcar/bigbullcar/brand/长安-1111/1" title="长安二手车">长安</a>
       <a href="/bigbullcar/bigbullcar/brand/长安商用-1111/1" title="长安商用二手车">长安商用</a>
       <a href="/bigbullcar/bigbullcar/brand/长城-1111/1" title="长城二手车">长城</a>
       <a href="/bigbullcar/bigbullcar/brand/昌河-1111/1" title="昌河二手车">昌河</a>
       <a href="/bigbullcar/bigbullcar/brand/传祺-1111/1" title="传祺二手车">传祺</a>
       <a href="/bigbullcar/bigbullcar/brand/川汽野马-1111/1" title="川汽野马二手车">川汽野马</a>
       </td>
      </tr>
      </tbody>
      <tbody>
      <tr>
        <td class="zm">D</td>
        <td>
        <a href="/bigbullcar/bigbullcar/brand/道奇-1111/1" title="道奇二手车">道奇</a>
        <a href="/bigbullcar/bigbullcar/brand/大众-1111/1" title="大众二手车">大众</a>
        <a href="/bigbullcar/bigbullcar/brand/东风-1111/1" title="东风二手车">东风</a>
        <a href="/bigbullcar/bigbullcar/brand/东风风度-1111/1" title="东风风度二手车">东风风度</a>
        <a href="/bigbullcar/bigbullcar/brand/东风风神-1111/1" title="东风风神二手车">东风风神</a>
        <a href="/bigbullcar/bigbullcar/brand/东风风行-1111/1" title="东风风行二手车">东风风行</a>
        <a href="/bigbullcar/bigbullcar/brand/东风小康-1111/1" title="东风小康二手车">东风小康</a>
        <a href="/bigbullcar/bigbullcar/brand/东南-1111/1" title="东南二手车">东南</a>
        <a href="/bigbullcar/bigbullcar/brand/DS-1111/1" title="DS二手车">DS</a>
        </td>
      </tr>
      <tr>
        <td class="zm">F</td>
        <td>
        <a href="/bigbullcar/bigbullcar/brand/菲亚特-1111/1" title="菲亚特二手车">菲亚特</a>
        <a href="/bigbullcar/bigbullcar/brand/丰田-1111/1" title="丰田二手车">丰田</a>
        <a href="/bigbullcar/bigbullcar/brand/福迪-1111/1" title="福迪二手车">福迪</a>
        <a href="/bigbullcar/bigbullcar/brand/福汽启腾-1111/1" title="福汽启腾二手车">福汽启腾</a>
        <a href="/bigbullcar/bigbullcar/brand/福特-1111/1" title="福特二手车">福特</a>
        <a href="/bigbullcar/bigbullcar/brand/福田-1111/1" title="福田二手车">福田</a>
        </td>
      </tr>
      <tr>
        <td class="zm">G</td>
        <td>
        <a href="/bigbullcar/bigbullcar/brand/GMC-1111/1" title="GMC二手车">GMC</a>
        <a href="/bigbullcar/bigbullcar/brand/广汽吉奥二手车-1111/1" title="广汽吉奥二手车">广汽吉奥</a>
        <a href="/bigbullcar/bigbullcar/brand/观致-1111/1" title="观致二手车">观致</a>
        </td>
      </tr>
      </tbody>
      <tbody>
      <tr>
         <td class="zm">H</td>
         <td>
         <a href="/bigbullcar/bigbullcar/brand/哈飞-1111/1" title="哈飞二手车">哈飞</a>
         <a href="/bigbullcar/bigbullcar/brand/哈佛-1111/1" title="哈弗二手车">哈弗</a>
         <a href="/bigbullcar/bigbullcar/brand/海格-1111/1" title="海格二手车">海格</a>
         <a href="/bigbullcar/bigbullcar/brand/海马-1111/1" title="海马二手车">海马</a>
         <a href="/bigbullcar/bigbullcar/brand/悍马-1111/1" title="悍马二手车">悍马</a>
         <a href="/bigbullcar/bigbullcar/brand/黄海-1111/1" title="黄海二手车">黄海</a>
         <a href="/bigbullcar/bigbullcar/brand/华普-1111/1" title="华普二手车">华普</a>
         <a href="/bigbullcar/bigbullcar/brand/华泰-1111/1" title="华泰二手车">华泰</a>
         <a href="/bigbullcar/bigbullcar/brand/汇众-1111/1" title="汇众二手车">汇众</a>
         </td>
        </tr>
        <tr>
          <td class="zm">J</td>
          <td>
          <a href="/bigbullcar/bigbullcar/brand/Jeep-1111/1" title="Jeep二手车">Jeep</a>
          <a href="/bigbullcar/bigbullcar/brand/江淮-1111/1" title="江淮二手车">江淮</a>
          <a href="/bigbullcar/bigbullcar/brand/江铃-1111/1" title="江铃二手车">江铃</a>
          <a href="/bigbullcar/bigbullcar/brand/捷豹-1111/1" title="捷豹二手车">捷豹</a>
          <a href="/bigbullcar/bigbullcar/brand/吉利-1111/1" title="吉利二手车">吉利</a>
          <a href="/bigbullcar/bigbullcar/brand/金杯-1111/1" title="金杯二手车">金杯</a>
          </td>
        </tr>
        <tr>
          <td class="zm">K</td>
          <td>
          <a href="/bigbullcar/bigbullcar/brand/凯迪拉克-1111/1" title="凯迪拉克二手车">凯迪拉克</a>
          <a href="/bigbullcar/bigbullcar/brand/开瑞-1111/1" title="开瑞二手车">开瑞</a>
          <a href="/bigbullcar/bigbullcar/brand/凯翼-1111/1" title="凯翼二手车">凯翼</a>
          <a href="/bigbullcar/bigbullcar/brand/卡威-1111/1" title="卡威二手车">卡威</a>
          <a href="/bigbullcar/bigbullcar/brand/克莱斯勒-1111/1" title="克莱斯勒二手车">克莱斯勒</a>
          </td>
        </tr>
        </tbody>
        <tbody>
        <tr>
           <td class="zm">L</td>
           <td>
           <a href="/bigbullcar/bigbullcar/brand/雷克萨斯-1111/1" title="雷克萨斯二手车">雷克萨斯</a>
           <a href="/bigbullcar/bigbullcar/brand/雷诺-1111/1" title="雷诺二手车">雷诺</a>
           <a href="/bigbullcar/bigbullcar/brand/猎豹-1111/1" title="猎豹二手车">猎豹</a>
           <a href="/bigbullcar/bigbullcar/brand/力帆-1111/1" title="力帆二手车">力帆</a>
           <a href="/bigbullcar/bigbullcar/brand/铃木-1111/1" title="铃木二手车">铃木</a>
           <a href="/bigbullcar/bigbullcar/brand/理念-1111/1" title="理念二手车">理念</a>
           <a href="/bigbullcar/bigbullcar/brand/林肯-1111/1" title="林肯二手车">林肯</a>
           <a href="/bigbullcar/bigbullcar/brand/陆风-1111/1" title="陆风二手车">陆风</a>
           <a href="/bigbullcar/bigbullcar/brand/路虎-1111/1" title="路虎二手车">路虎</a>
           </td>
         </tr>
         <tr>
           <td class="zm">M</td>
           <td>
           <a href="/bigbullcar/bigbullcar/brand/玛莎拉蒂-1111/1" title="玛莎拉蒂二手车">玛莎拉蒂</a>
           <a href="/bigbullcar/bigbullcar/brand/马自达-1111/1" title="马自达二手车">马自达</a>
           <a href="/bigbullcar/bigbullcar/brand/MG-1111/1" title="MG二手车">MG</a>
           <a href="/bigbullcar/bigbullcar/brand/MINI-1111/1" title="MINI二手车">MINI</a>
           </td>
         </tr>
         </tbody>
      </table>
      <table class="tbr">
         <tbody>
         <tr>
           <td class="zm">N</td>
           <td>
           <a href="/bigbullcar/bigbullcar/brand/纳智捷-1111/1" title="纳智捷二手车">纳智捷</a>
           </td>
         </tr>
         <tr>
           <td class="zm">O</td>
           <td>
           <a href="/bigbullcar/bigbullcar/brand/欧宝-1111/1" title="欧宝二手车">欧宝</a>
           <a href="/bigbullcar/bigbullcar/brand/讴歌-1111/1" title="讴歌二手车">讴歌</a>
           <a href="/bigbullcar/bigbullcar/brand/欧朗-1111/1" title="欧朗二手车">欧朗</a>
           </td>
         </tr>
         <tr>
            <td class="zm">Q</td>
            <td>
            <a href="/bigbullcar/bigbullcar/brand/启辰-1111/1" title="启辰二手车">启辰</a>
            <a href="/bigbullcar/bigbullcar/brand/青年莲花-1111/1" title="青年莲花二手车">青年莲花</a>
            <a href="/bigbullcar/bigbullcar/brand/奇瑞-1111/1" title="奇瑞二手车">奇瑞</a>
            <a href="/bigbullcar/bigbullcar/brand/起亚-1111/1" title="起亚二手车">起亚</a>
            </td>
         </tr>
         <tr>
            <td class="zm">R</td>
            <td>
            <a href="/bigbullcar/bigbullcar/brand/日产-1111/1" title="日产二手车">日产</a>
            <a href="/bigbullcar/bigbullcar/brand/荣威-1111/1" title="荣威二手车">荣威</a>
            <a href="/bigbullcar/bigbullcar/brand/瑞麒-1111/1" title="瑞麒二手车">瑞麒</a>
            </td>
         </tr>
         </tbody>
         <tbody>
         <tr>
            <td class="zm">S</td>
            <td>
            <a href="/bigbullcar/bigbullcar/brand/三菱-1111/1" title="三菱二手车">三菱</a>
            <a href="/bigbullcar/bigbullcar/brand/上汽大众-1111/1" title="上汽大通二手车">上汽大通</a>
            <a href="/bigbullcar/bigbullcar/brand/双环-1111/1" title="双环二手车">双环</a>
            <a href="/bigbullcar/bigbullcar/brand/双龙-1111/1" title="双龙二手车">双龙</a>
            <a href="/bigbullcar/bigbullcar/brand/斯巴鲁-1111/1" title="斯巴鲁二手车">斯巴鲁</a>
            <a href="/bigbullcar/bigbullcar/brand/斯柯达-1111/1" title="斯柯达二手车">斯柯达</a>
            <a href="/bigbullcar/bigbullcar/brand/思铭-1111/1" title="思铭二手车">思铭</a>
            <a href="/bigbullcar/bigbullcar/brand/Smart-1111/1" title="Smart二手车">Smart</a>
            <a href="/bigbullcar/bigbullcar/brand/SPRINGO-1111/1" title="SPRINGO二手车">SPRINGO</a>
            </td>
          </tr>
          <tr>
             <td class="zm">T</td>
             <td>
             <a href="/bigbullcar/bigbullcar/brand/特斯拉-1111/1" title="特斯拉二手车">特斯拉</a>
             </td>
          </tr>
          <tr>
             <td class="zm">W</td>
             <td>
             <a href="/bigbullcar/bigbullcar/brand/威麟-1111/1" title="威麟二手车">威麟</a>
             <a href="/bigbullcar/bigbullcar/brand/威旺-1111/1" title="威旺二手车">威旺</a>
             <a href="/bigbullcar/bigbullcar/brand/沃尔沃-1111/1" title="沃尔沃二手车">沃尔沃</a>
             <a href="/bigbullcar/bigbullcar/brand/五菱-1111/1" title="五菱二手车">五菱</a>
             </td>
          </tr>
          </tbody>
          <tbody>
          <tr>
             <td class="zm">X</td>
             <td>
             <a href="/bigbullcar/bigbullcar/brand/夏利-1111/1" title="夏利二手车">夏利</a>
             <a href="/bigbullcar/bigbullcar/brand/现代-1111/1" title="现代二手车">现代</a>
             <a href="/bigbullcar/bigbullcar/brand/西雅特-1111/1" title="西雅特二手车">西雅特</a>
             <a href="/bigbullcar/bigbullcar/brand/雪佛兰-1111/1" title="雪佛兰二手车">雪佛兰</a>
             <a href="/bigbullcar/bigbullcar/brand/雪铁龙-1111/1" title="雪铁龙二手车">雪铁龙</a>
             </td>
           </tr>
           <tr>
              <td class="zm">Y</td>
              <td>
              <a href="/bigbullcar/bigbullcar/brand/英菲尼迪-1111/1" title="英菲尼迪二手车">英菲尼迪</a>
              <a href="/bigbullcar/bigbullcar/brand/英致-1111/1" title="英致二手车">英致</a>
              <a href="/bigbullcar/bigbullcar/brand/一汽-1111/1" title="一汽二手车">一汽</a>
              <a href="/bigbullcar/bigbullcar/brand/依维柯-1111/1" title="依维柯二手车">依维柯</a>
              <a href="/bigbullcar/bigbullcar/brand/永源-1111/1" title="永源二手车">永源</a>
              </td>
            </tr>
            <tr>
               <td class="zm">Z</td>
               <td>
               <a href="/bigbullcar/bigbullcar/brand/知豆-1111/1" title="知豆二手车">知豆</a>
               <a href="/bigbullcar/bigbullcar/brand/中华-1111/1" title="中华二手车">中华</a>
               <a href="/bigbullcar/bigbullcar/brand/中欧-1111/1" title="中欧二手车">中欧</a>
               <a href="/bigbullcar/bigbullcar/brand/中顺-1111/1" title="中顺二手车">中顺</a>
               <a href="/bigbullcar/bigbullcar/brand/众泰-1111/1" title="众泰二手车">众泰</a>
               <a href="/bigbullcar/bigbullcar/brand/中兴-1111/1" title="中兴二手车">中兴</a>
                   </td>
             </tr>
           </tbody>
         </table>
         </div>
                   </div>
      </div>
     </div>
       <div class="sx-price">
          <div class="dt"><H2 style="color:green">价格</H2></div>
              <div class="dd">
                <a href="/bigbullcar/bigbullcar/price/0-5-2222/1" title='5万以下二手车'> 5万以下</a>
                <a href="/bigbullcar/bigbullcar/price/5-10-2222/1" title='10万以下二手车'>5-10万</a>
                <a href="/bigbullcar/bigbullcar/price/10-15-2222/1" title='15万以下二手车'> 10-15万</a>
                <a href="/bigbullcar/bigbullcar/price/15-20-2222/1" title='20万以下二手车'>15-20万</a>
                <a href="/bigbullcar/bigbullcar/price/20-25-2222/1" title='25万以下二手车'>20-25万</a>
                <a href="/bigbullcar/bigbullcar/price/25-40-2222/1" title='40万以下二手车'>25-40万</a>
                <a href="/bigbullcar/bigbullcar/price/40-60-2222/1" title='60万以下二手车'>40-60万</a>
                <a href="/bigbullcar/bigbullcar/price/60-100000000-2222/1" title='60万以上二手车'>60万以上</a>
          </div>
       </div>
       <div class="sx-chexing">
          <div class="dt"><h2 style="color:green">车型</h2></div>
            <div class="dd">
               <a href="/bigbullcar/bigbullcar/type/SUV-3333/1" class="x-suv" title="二手SUV">SUV</a>
               <a href="/bigbullcar/bigbullcar/type/MPV-3333/1" class="x-mpv" title="二手MPV">MPV</a>
               <a href="/bigbullcar/bigbullcar/type/跑车-3333/1" class="x-paoche" title="二手跑车">跑车</a>
               <a href="/bigbullcar/bigbullcar/type/轿车-3333/1" class="x-sanxiang" title="二手轿车" >轿车</a>
            </div>
         </div>
       </div>
    </div>
	</div>
	<div id="Content-Main">
		<div style="width: 560px; height: 362px;">
			<div id="featured">
				<a class="orbit-item" href="resources/html/spokesmandgl.html"
					data-caption="#htmlCaption1" target="_blank"><img
					src="resources/images/img1.png" alt="img1"></a> <a
					class="orbit-item" href="resources/html/appraiser.html"
					data-caption="#htmlCaption2" target="_blank"><img
					src="resources/images/img2.png" alt="img1"></a> <a
					class="orbit-item" href="resources/html/erweima.html"
					data-caption="#htmlCaption3" target="_blank"><img
					src="resources/images/img3.jpg" alt="img1"></a>
			</div>
			<span class="orbit-caption" id="htmlCaption1">大牛品牌大使：赵宝珠先生</span> <span
				class="orbit-caption" id="htmlCaption2">优秀的评估师团队</span> <span
				class="orbit-caption" id="htmlCaption3">欢迎下载大牛二手车APP</span>
		</div>

		<script src="resources/js/jquery-1.7.2.min.js"></script>
		<script src="resources/js/jquery.orbit.min.js"></script>
		<script>
			$(window).load(function() {
				$('#featured').orbit({
					bullets : true,
					startClockOnMouseOut : true,
					captionAnimation : 'slideOpen'
				});
			});
		</script>
		<!-- 代码 结束 -->
	</div>


	<div id="Goods">
		<div id="Details">
			<div id="bigBox_zhang">


				<!-- 无序-->

				<span class="ti-left"> <span class="remen">热门好车</span> <ab
						class="on" name="a100886">猜您喜欢</ab> <ab name="a100886">最新上架</ab> <ab
						name="a100886">降价急售</ab> <ab name="a100886">准新车</ab> <ab
						name="a100886">练手车</ab> <ab name="a100886">SUV</ab>
				</span>
<!-- 第一页tabl -->
	<div class="tabDivClass" id="tab-0">
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/1"><img
							src="./resources/images/zbz-images/1.2.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奥迪R8白色6.8L</a>
						<p class="fc-gray">
							<span class="">2013年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶5000公里
						</p>
						<p class="priType-s">
							<span> <i class="fc-org">34万</i>
							</span> <del>80.9万</del>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/10"><img
							src="./resources/images/zbz-images/10.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奔驰G500
							四驱 越野车</a>
						<p class="fc-gray">
							<span class="">2014年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶4.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">508万</i>
							</span> <del>390万</del>
						</p>
					</div>
					
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/2"><img
							src="./resources/images/zbz-images/2.2.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">宝马730</a>
						<p class="fc-gray">
							<span class="">2010年9月上牌</span> <em class="shuxian"></em>&nbsp;行驶13万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">45万</i>
							</span> <s>118万</s>
						</p>
					</div>
					
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/1"><img
							src="./resources/images/zbz-images/1.2.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奥迪R8白色6.8L</a>
						<p class="fc-gray">
							<span class="">2013年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶5000公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">34万</i>
							</span> <s>80.9万</s>
						</p>
					</div>
					
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/1"><img
							src="./resources/images/zbz-images/1.2.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奥迪R8白色6.8L</a>
						<p class="fc-gray">
							<span class="">2013年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶5000公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">34万</i>
							</span> <s>80.9万</s>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/3"><img
							src="./resources/images/zbz-images/3.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">丰田
							SUV-兰德酷路泽</a>
						<p class="fc-gray">
							<span class="">2014年2月上牌</span> <em class="shuxian"></em>&nbsp;行驶7.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">45万</i>
							</span> <s>98万</s>
						</p>
					</div>
		</div>

				
		<!-- 第二页tab -->
				<div class="tabDivClass"  id="tab-1" style="display:none"  >
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/4"><img
							src="./resources/images/zbz-images/4.8.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">法拉利
							跑车 5.0L</a>
						<p class="fc-gray">
							<span class="">2013年6月上牌</span> <em class="shuxian"></em>&nbsp;行驶2.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">320万</i>
							</span> <s>890万</s>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/9"><img
							src="./resources/images/zbz-images/9.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奔驰E320l</a>
						<p class="fc-gray">
							<span class="">2009年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶32.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">35万</i>
							</span> <s>418万</s> <em class="tag-red">急售</em>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/7"><img
							src="./resources/images/zbz-images/7.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">兰博基尼双门跑车绿色版8.0L</a>
						<p class="fc-gray">
							<span class="">2013年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶2.8万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">700万</i>
							</span> <s>1880万</s>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/5"><img
							src="./resources/images/zbz-images/5.2.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奥迪
							轿车 3.0L四门轿车</a>
						<p class="fc-gray">
							<span class="">2010年2月上牌</span> <em class="shuxian"></em>&nbsp;行驶22.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">137万</i>
							</span> <s>983万</s>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/9"><img
							src="./resources/images/zbz-images/9.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奔驰E320l</a>
						<p class="fc-gray">
							<span class="">2009年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶32.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">35万</i>
							</span> <s>418万</s> <em class="tag-red">急售</em>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/5"><img
							src="./resources/images/zbz-images/5.2.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奥迪
							轿车 3.0L四门轿车</a>
						<p class="fc-gray">
							<span class="">2010年2月上牌</span> <em class="shuxian"></em>&nbsp;行驶22.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">137万</i>
							</span> <s>983万</s>
						</p>
					</div>

				</div>
				
				
		<!-- 第三页tab -->
		<div class="tabDivClass" id="tab-2" style="display:none">
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/8"><img
							src="./resources/images/zbz-images/8.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奇瑞风云2
							1.5L</a>
						<p class="fc-gray">
							<span class="">2012年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶22.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">1.50万</i>
							</span> <s>4.8万</s> <em class="tag-red">急售</em>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/9"><img
							src="./resources/images/zbz-images/9.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奔驰E320l</a>
						<p class="fc-gray">
							<span class="">2009年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶32.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">35万</i>
							</span> <s>418万</s> <em class="tag-red">急售</em>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/10"><img
							src="./resources/images/zbz-images/10.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奔驰S600</a>
						<p class="fc-gray">
							<span class="">2010年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶12.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">45万</i>
							</span> <s>480万</s> <em class="tag-red">急售</em>
						</p>
					</div>

				
				<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/9"><img
							src="./resources/images/zbz-images/9.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奔驰E320l</a>
						<p class="fc-gray">
							<span class="">2009年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶32.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">35万</i>
							</span> <s>418万</s> <em class="tag-red">急售</em>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/9"><img
							src="./resources/images/zbz-images/9.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奔驰E320l</a>
						<p class="fc-gray">
							<span class="">2009年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶32.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">35万</i>
							</span> <s>418万</s> <em class="tag-red">急售</em>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/9"><img
							src="./resources/images/zbz-images/9.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奔驰E320l</a>
						<p class="fc-gray">
							<span class="">2009年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶32.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">35万</i>
							</span> <s>418万</s> <em class="tag-red">急售</em>
						</p>
					</div>
					
		</div>
				
		<!-- 第四页tab -->
		<div class="tabDivClass" id="tab-3" style="display:none">
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/9"><img
							src="./resources/images/zbz-images/9.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奔驰AMG
							5.5L</a>
						<p class="fc-gray">
							<span class="">2015年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶1万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">350万</i>
							</span> <s>280万</s> <em class="tag-green">99新</em>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/7"><img
							src="./resources/images/zbz-images/7.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">兰博基尼
							Aventador 6.5L</a>
						<p class="fc-gray">
							<span class="">2015年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">650万</i>
							</span> <s>808.5万</s> <em class="tag-green">99新</em>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/6"><img
							src="./resources/images/zbz-images/6.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">五菱宏光
							自动档 1.5L</a>
						<p class="fc-gray">
							<span class="">2015年4月上牌</span> <em class="shuxian"></em>&nbsp;行驶2.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">2.50万</i>
							</span> <s>6万</s> <em class="tag-green">99新</em>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/7"><img
							src="./resources/images/zbz-images/7.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">兰博基尼
							Aventador 6.5L</a>
						<p class="fc-gray">
							<span class="">2015年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">650万</i>
							</span> <s>808.5万</s> <em class="tag-green">99新</em>
						</p>
					</div>
					
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/6"><img
							src="./resources/images/zbz-images/6.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">五菱宏光
							自动档 1.5L</a>
						<p class="fc-gray">
							<span class="">2015年4月上牌</span> <em class="shuxian"></em>&nbsp;行驶2.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">2.50万</i>
							</span> <s>6万</s> <em class="tag-green">99新</em>
						</p>
					</div>
					
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/7"><img
							src="./resources/images/zbz-images/7.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">兰博基尼
							Aventador 6.5L</a>
						<p class="fc-gray">
							<span class="">2015年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">650万</i>
							</span> <s>808.5万</s> <em class="tag-green">99新</em>
						</p>
					</div>

				
			</div>
				
				
		<!-- 第五页tab -->		
		<div class="tabDivClass" id="tab-4" style="display:none">
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/7"><img
							src="./resources/images/zbz-images/7.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">兰博基尼
							盖拉多 6.0L</a>
						<p class="fc-gray">
							<span class="">2013年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶9.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">680万</i>
							</span> <s>450万</s>
						</p>
					</div>
					
					
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/10"><img
							src="./resources/images/zbz-images/10.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奔驰G500
							四驱 越野车</a>
						<p class="fc-gray">
							<span class="">2014年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶4.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">508万</i>
							</span> <s>390万</s>
						</p>
					</div>
					
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/7"><img
							src="./resources/images/zbz-images/7.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">兰博基尼
							盖拉多 6.0L</a>
						<p class="fc-gray">
							<span class="">2013年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶9.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">680万</i>
							</span> <s>450万</s>
						</p>
					</div>
					
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/12"><img
							src="./resources/images/zbz-images/12.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">五菱宏光
							手动档 七座面包</a>
						<p class="fc-gray">
							<span class="">2013年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶7.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">2.5万</i>
							</span> <s>18万</s>
						</p>
					</div>
				<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/10"><img
							src="./resources/images/zbz-images/10.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奔驰G500
							四驱 越野车</a>
						<p class="fc-gray">
							<span class="">2014年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶4.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">508万</i>
							</span> <s>390万</s>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/9"><img
							src="./resources/images/zbz-images/9.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奔驰E320l</a>
						<p class="fc-gray">
							<span class="">2009年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶32.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">35万</i>
							</span> <s>418万</s> <em class="tag-red">急售</em>
						</p>
					</div>
				
			</div>
				
				
				
				
				
			<!-- 第六页tab -->	
				<div class="tabDivClass" id="tab-5" style="display:none">
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/8"><img
							src="./resources/images/zbz-images/8.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奇瑞翼虎2.0L
							自动档</a>
						<p class="fc-gray">
							<span class="">2012年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶11万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">4.5万</i>
							</span> <s>18万</s>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/9"><img
							src="./resources/images/zbz-images/9.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奔驰E320l</a>
						<p class="fc-gray">
							<span class="">2009年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶32.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">35万</i>
							</span> <s>418万</s> <em class="tag-red">急售</em>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/1"><img
							src="./resources/images/zbz-images/1.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奥迪
							Q7 城市SUV 3.5L 自动挡</a>
						<p class="fc-gray">
							<span class="">2010年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶5万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">20万</i>
							</span> <s>118万</s>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/9"><img
							src="./resources/images/zbz-images/9.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奔驰E320l</a>
						<p class="fc-gray">
							<span class="">2009年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶32.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">35万</i>
							</span> <s>418万</s> <em class="tag-red">急售</em>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/6"><img
							src="./resources/images/zbz-images/6.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奥迪跑车2013版</a>
						<p class="fc-gray">
							<span class="">2010年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶8万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">130万</i>
							</span> <s>690万</s>
						</p>
					</div>
					<div class="Car_box_zhang">
						<a href="bigbullcar/buycar/3"><img
							src="./resources/images/zbz-images/3.1.jpg" width="290"
							height="190" /></a><br /> <a class="CarMessage_box_target_zhang">奥迪
							2011款 A8 3.0L 自动...</a>
						<p class="fc-gray">
							<span class="">2012年8月上牌</span> <em class="shuxian"></em>&nbsp;行驶12.3万公里
						</p>
						<p class="priType-s">

							<span> <i class="fc-org">45万</i>
							</span> <s>120万</s>
						</p>
					</div>
	
			</div>
	<!-- 盒子结束 -->
			
			</div>
		</div>
	</div>
	
	<div id="Footer">
		<!--加载footer 信息部分 -->
		<div id="Footer-Left">
			<img alt="商标" src="./resources/images/logo.png"
				style="height: 200px; width: 300px">
		</div>
		<div id="Footer-Main">
			<br> 咨询电话：400-029-6196
			<P>（周一至周日 8:00-21:00）
			<p>售后服务专线：400-733-1100
		</div>
		<div id="Footer-Right">
			<p>
				<br> <br> 大牛二手车 
				<a href="#">关于大牛</a> 
				<a href="#">加入我们</a> 
				<a href="#">联系我们</a> 
				<a href="#">服务保障</a><br>
				<br>
			<p class="arc-info">Copyright 2016 www.bigbull.com All
				RightsReserved</p>
			<p class="arc-info">沪ICP备15010928号 ICP证151036号</p>
		</div>
	</div>
</body>
</html>
