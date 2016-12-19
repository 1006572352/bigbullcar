<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("basePath", basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>${carmessageList.get(0).carbrand }</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->



<link rel="stylesheet" type="text/css"
	href="${basePath }resources/css/Car_zhang.css" />
<script type="text/javascript"
	src="${basePath }resources/js/Car_zhang.js"></script>
<script type="text/javascript"
	src="${basePath }resources/js/jquery-1.8.3.js"></script>

<link href="${basePath }resources/css/datouwang.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript"
	src="${basePath }resources/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="${basePath }resources/js/koala.min.1.5.js"></script>



<!-- 弹框提示引入 -->

<!-- Load local jQuery -->
<script src="${basePath }resources/js/jquery-loader.js"></script>

<!-- Load local lib and tests -->
<link rel="stylesheet" href="${basePath }resources/css/remodal.css">
<link rel="stylesheet"
	href="${basePath }resources/css/remodal-default-theme.css">
<script src="${basePath }resources/js/remodal.js"></script>


<script src="${basePath }resources/js/jquery-1.8.0.min.js"></script>
<style type="text/css"></style>
<script>
	window.onload = function() {
		var inpEle = document.getElementById('inp');
		var myreg = /^1[3458]\d{9}$/;
		inpEle.onblur = function() {
			var inpVal = this.value;
			if (!myreg.exec(inpVal)) {
				alert('请输入正确的手机号')
			} else {
				
			  
			}
		}
	}
</script>




</head>

<body>
	<!-- 头部 -->
	<div class="header">
		<table bgcolor="#33FFFF" width="1350px" style="font-size: 30px">
			<tr>
				<td width="20%">
					<img src="./resources/images/logo.png" width="150px" height="100px" />
				</td>
				<td width="10%">${userName }</td>
				<td>
					<a href="./index.jsp" target="new">首页</a>
				</td>
				<td>
					<a href="bigbullcar/buycar" target="new">买车</a>
				</td>
				<td>
					<a href="bigbullcar/salecar" target="new">卖车</a>
				</td>
				<td>
					<a href="./resources/jsp/CustomerCarezbz.jsp" target="new">客服</a>
				</td>
				<td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
		</table>
	</div>

	<!--导航地图 -->
	<div class="crumbs">
		<a href="#" rel="nofollow">首页</a>
		<em>&gt;</em>
		
		<span>>${carmessageList.get(0).carbrand }
			${carmessageList.get(0).carcolor } ${carmessageList.get(0).cartype }</span>
	</div>
	<!-- 汽车基本说明 -->


	<div id="fsD1" class="focus">
		<div id="D1pic1" class="fPic">
			<div class="fcon" style="display: none;">
				<a>
					<img
						src="./resources/images/zbz-images/${carmessageList.get(0).carphoto }.1.jpg"
						style="opacity: 1; ">
				</a>
				<span class="shadow">
					<a href="#">&nbsp; 品牌: &nbsp;${carmessageList.get(0).carbrand }
					</a>
				</span>
			</div>

			<div class="fcon" style="display: none;">
				<a>
					<img
						src="./resources/images/zbz-images/${carmessageList.get(0).carphoto }.2.jpg"
						style="opacity: 1; ">
				</a>
				<span class="shadow">
					<a href="#">&nbsp; 车身颜色: &nbsp;${carmessageList.get(0).carcolor }
					</a>
				</span>
			</div>

			<div class="fcon" style="display: none;">
				<a>
					<img
						src="./resources/images/zbz-images/${carmessageList.get(0).carphoto }.3.jpg"
						style="opacity: 1; ">
				</a>
				<span class="shadow">
					<a href="#">&nbsp; 车型: &nbsp; ${carmessageList.get(0).cartype }</a>
				</span>
			</div>

			<div class="fcon" style="display: none;">
				<a>
					<img
						src="./resources/images/zbz-images/${carmessageList.get(0).carphoto }.4.jpg"
						style="opacity: 1; ">
				</a>
				<span class="shadow">
					<a href="#">${carmessageList.get(0).carbrand }
						${carmessageList.get(0).carcolor } ${carmessageList.get(0).cartype }</a>
				</span>
			</div>
		</div>
		<div class="fbg">
			<div class="D1fBt" id="D1fBt">
				<a href="javascript:void(0)" hidefocus="true" target="_self"
					class="">
					<i>1</i>
				</a>
				<a href="javascript:void(0)" hidefocus="true" target="_self"
					class="">
					<i>2</i>
				</a>
				<a href="javascript:void(0)" hidefocus="true" target="_self"
					class="current">
					<i>3</i>
				</a>
				<a href="javascript:void(0)" hidefocus="true" target="_self"
					class="">
					<i>4</i>
				</a>
			</div>
		</div>
		<span class="prev"></span>
		<span class="next"></span>
	</div>
	<script type="text/javascript">
		Qfast.add('widgets', {
			path : "${basePath }resources/js/terminator2.2.min.js",
			type : "js",
			requires : [ 'fx' ]
		});
		Qfast(false, 'widgets', function() {
			K.tabs({
				id : 'fsD1', //焦点图包裹id  
				conId : "D1pic1", //** 大图域包裹id  
				tabId : "D1fBt",
				tabTn : "a",
				conCn : '.fcon', //** 大图域配置class       
				auto : 1, //自动播放 1或0
				effect : 'fade', //效果配置
				eType : 'click', //** 鼠标事件
				pageBt : true,//是否有按钮切换页码
				bns : [ '.prev', '.next' ],//** 前后按钮配置class                          
				interval : 3000
			//** 停顿时间  
			})
		})
	</script>
	<!-- 代码 结束 -->


	<!-- 弹框输入手机号吗 -->



	<div class="remodal" data-remodal-id="modal">
		<a data-remodal-action="close" class="remodal-close"></a>
		<FORM action="anonym/add" method="post">
			请输入您的手机号码:
			<input id="inp" type=text name="anonymTel"/>
			<INPUT type="submit" value="确认预约">
		</FORM>
	</div>
	<!-- 代码结束 -->




	<div class="det-sumright">
		<div class="dt-titbox">
			<h1 class="dt-titletype" title="宝马7系 2009款 730Li 3.0 自动 豪华型(进口)">${carmessageList.get(0).carbrand }
				${carmessageList.get(0).carcolor } ${carmessageList.get(0).cartype }</h1>
		</div>
		<div class="basic-box">
			<div class="pricebox">
				<i class="ico-txt ">车主报价：</i>
				<span class="fc-org ">
					<b class="f30">￥${carmessageList.get(0).carprice }</b>
					万
				</span>
				<span class="f14">
					新车价(含税)
					<font color="#f60">109.53万</font>
					省
					<font color="#f60">67.75万</font>
				</span>
			</div>



			<!--服务费-->
			<div class="car-fuwu">
				<i class="ico-txt">服&ensp;务&ensp;费：</i>
				<span>9800元（车价x3%，最低2500元），送1年2万公里质保</span>
			</div>
		</div>


		<ul class="clearfix002">
			<li>
				<b>${carmessageList.get(0).carage } 年</b>
				车龄
			</li>
			<li>
				<b>${carmessageList.get(0).carmileage }</b>
				里程
			</li>
			<li>
				<b>手动</b>
				变速箱
			</li>
			<li>
				<b>国四</b>
				排放标准
			</li>
			<li>
				<b>上海</b>
				上牌地
			</li>
		</ul>

		<div class="car-results">
			<!--咨询最低价-->
			<a id="askprice" data-remodal-target="modal" class="btn"
				href="javascript:void(0);">预约看车</a>
			<!--咨询最低价-->
			<span class="btn btn-iphone">
				<span class="iconfont">电话:</span>
				888-888-8888
			</span>
		</div>

		<div class="car-address">
			<i class="iconfont"></i>
			看车地点：上海市杨浦区凤城路101号
		</div>
	</div>


	<table class="detect-info" width="80%" border="1" cellspacing="3"
		cellpadding="2">
		<tr>
			<td class="jiancebaogao">&nbsp;检测报告:</td>
			<td rowspan=3 class="photo1234">
				<img src="./resources/images/zbz-images/zbz.png" width="150"
					height="200">
				<br>
				<B class="daniuyihao"> 赵元宝</B>
				<p>资深二手车检测师</p>
			</td>
		</tr>
		<tr>
			<td class="jiancexiangqing">经检测，该车内饰有破损痕迹，外观有轻微缺陷，
				覆盖件有做漆、钣金痕迹，发动机轻微渗油，气门室罩盖轻微渗油， 变速箱正常，无怠速抖动，转向无乏力感。底盘部件无专用设备无法检测。
				车辆骨架完整，未见重大事故痕迹。右后门锁故障，可测试电子元件完好无损坏件，均可正常使用。</td>
		</tr>
		<tr>
			<td>
				<ul class="ul_table">
					<li>事故排查</li>
					<li>排除重大碰撞(共18项)&radic;</li>
					<li>排除泡水(共8项)&radic;</li>
					<li>排除火烧(共2项)&radic;</li>
				</ul>
				<ul class="ul_table">
					<li>外观内饰检测</li>
					<li>外观修复检测(共51项)&radic;</li>
					<li>外观修复检测(共34项)&radic;</li>
					<li>内饰缺陷检查(共29项)&radic;</li>
				</ul>
				<ul class="ul_table">
					<li>系统设备检测</li>
					<li>安全及指示灯检测(共11项)&radic;</li>
					<li>刹车及发动机舱检测(共12项)&radic;</li>
					<li>电子设备及其他检测&radic;</li>
				</ul>
				<ul class="ul_table">
					<li>驾驶检测</li>
					<li>启动与起步(共5项)&radic;</li>
					<li>加速与行驶(共8项)&radic;</li>
					<li>减速与制动(共4项)&radic;</li>
				</ul>
			</td>
		</tr>
	</table>

	<div class="car_photo">
		<h4>汽车图片</h4>
		<img class="car_p"
			src="./resources/images/zbz-images/${carmessageList.get(0).carphoto }.1.jpg"
			width="580" height="400" />
		<img class="car_p"
			src="./resources/images/zbz-images/${carmessageList.get(0).carphoto }.2.jpg"
			width="580" height="400" />
		<img class="car_p"
			src="./resources/images/zbz-images/${carmessageList.get(0).carphoto }.3.jpg"
			width="580" height="400" />
		<img class="car_p"
			src="./resources/images/zbz-images/${carmessageList.get(0).carphoto }.4.jpg"
			width="580" height="400" />
		<img class="car_p"
			src="./resources/images/zbz-images/${carmessageList.get(0).carphoto }.5.jpg"
			width="580" height="400" />
		<img class="car_p"
			src="./resources/images/zbz-images/${carmessageList.get(0).carphoto }.6.jpg"
			width="580" height="400" />
		<img class="car_p"
			src="./resources/images/zbz-images/${carmessageList.get(0).carphoto }.7.jpg"
			width="580" height="400" />
		<img class="car_p"
			src="./resources/images/zbz-images/${carmessageList.get(0).carphoto }.8.jpg"
			width="580" height="400" />
		<img class="car_p"
			src="./resources/images/zbz-images/${carmessageList.get(0).carphoto }.9.jpg"
			width="580" height="400" />
		<img class="car_p"
			src="./resources/images/zbz-images/${carmessageList.get(0).carphoto }.10.jpg"
			width="580" height="400" />

		<img src="./resources/images/zbz-images/peizhi.png">
	</div>



</body>
</html>
