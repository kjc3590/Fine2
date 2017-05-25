<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>(주)파인인사이트 - 더 나은 미래로 향하는 창</title>
<meta name="description" content="UIUX디자인,기업홈페이지제작,반응형홈페이지제작,모바일어플리케이션제작">
<meta name="author" content="(주)파인인사이트">
<meta content="width=device-width, initial-scale=1" name="viewport">
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/style_index.css" rel="stylesheet" media="screen">
<link href="assets/css/animate.css" rel="stylesheet">
<link href="assets/css/responsive_index.css" rel="stylesheet">
<link href="assets/css/new.css" rel="stylesheet">
<script>
	function printTime() {
		var now = new Date(); // 현재시간
		goHome = new Date(now.getFullYear(),now.getMonth(),now.getDate(),18,00,00); // 원하는 날짜, 시간 정확하게 초단위까지 기입.
		goD = (goHome - now) / 1000 / 60 / 60 / 24; 
		goDay = Math.floor(goD); 
		goH = (goHome - now) / 1000 / 60 / 60 - (24 * goDay); 
		goHour = Math.floor(goH); 
		goM = (goHome - now) / 1000 /60 - (24 * 60 * goDay) - (60 * goHour); 
		goMin = Math.floor(goM); 
		goS = (goHome - now) / 1000 - (24 * 60 * 60 * goDay) - (60 * 60 * goHour) - (60 * goMin); 
		goSec = Math.round(goS); 
		
		var nowTime = "현재시간 : " + now.getFullYear() + "년" + (now.getMonth() + 1) + "월" + now.getDate() + "일" + now.getHours() + "시" + now.getMinutes() + "분" + now.getSeconds() + "초";
		var gohomeTime = "목표시간 : " + now.getFullYear() + "년" + (now.getMonth() + 1) + "월" + now.getDate() + "일" + "18시 00분";
		var GO = "칼퇴까지 "+goHour + "시" + goMin + "분" + goSec +"초"+ "남았씁니다."
		
		document.getElementById("now").innerHTML = nowTime; 
		document.getElementById("gohome").innerHTML = gohomeTime; 
		document.getElementById("GO").innerHTML = GO; 
		
		newtime = window.setTimeout("printTime();", 1000); 
	}
	window.onload = function() { // 페이지가 로딩되면 실행
		printTime();
	}
</script>

<style type="text/css">
#particles-js {
	background: radial-gradient(circle farthest-corner at 1099px 302px, rgb(111, 111, 111), rgb(0, 0, 0) 48%, rgb(12, 41, 72));
}
.time{
	padding-bottom: 10px;
	display: block;
}
.hero-content img{
	padding-bottom : 15px;
}
@media screen and (max-width: 480px) {
	.hero-content{
		height : auto;
		font-size : 12px;
	}
}
</style>
</head>
<body>
	<div id="preloader">
		<div id="status">
			<img alt="logo" src="assets/images/fine-logo.png">
		</div>
	</div>
	<!--/.PRELOADER END-->
	<div class="content-wrap">
		<!--CONTENT-->
		<%@ include file="/include/sidebar.jsp"%>
		<div id="mainban">
		<div id="particles-js"></div>
			<div class="wrap-hero-content">
				<div class="hero-content">
					<img src="assets/images/fine-logo.png" class="wow fadeInRight" data-wow-duration="1.4s" data-wow-delay="1.4s"> <br> 
						<span class ="time" id="gohome"> </span>
						<br>
						<span class ="time" id="now">현재시간 : </span>
						<br>
						<span class ="time" id="GO">칼퇴까지 </span>
						<br>
				</div>
			</div>
			<div class="mouse-icon margin-20">
				<div class="scroll"></div>
			</div>
		</div>
	</div>
<script src="assets/js/jquery-3.1.1.min.js"></script>
<script
	src="http://maps.googleapis.com/maps/api/js?key=AIzaSyB_bNNglsjbbOhArM3uMMLm0Qy4aCTPEu4"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.magnific-popup.min.js"
	type="text/javascript"></script>
<script src="assets/js/sidebar_index.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/typed.js"></script>
<script src="assets/js/wow.min.js"></script>
<script src="assets/js/isotope.pkgd.min.js"></script>
<script src="assets/js/scrollreveal.min.js"></script>
<script src="hututu/particles.js"></script>
<script src="assets/js/app4.js"></script>
<script src="assets/js/custom.js"></script>


</body>
</html>