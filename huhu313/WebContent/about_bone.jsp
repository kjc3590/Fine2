<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta content="width=device-width, initial-scale=1" name="viewport">

<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/owl.theme.css" rel="stylesheet">
<link href="assets/css/owl.carousel.css" rel="stylesheet">
<link href="assets/css/new.css" rel="stylesheet">
<link href="assets/css/responsive.css" rel="stylesheet">


<script src="assets/js/jquery-3.1.1.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/custom.js"></script>
<script src="assets/js/sidebar.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>
<script src="assets/js/typed.js"></script>
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
		<div id="mainban" class="about">
			<div id="carousel-example-generic" class="col-xs-12 carousel slide" data-ride="carousel" data-interval="false">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
<!-- 					<li data-target="#carousel-example-generic" data-slide-to="1"></li> -->
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
				<div class="item active">
						
							<div class="wrap-hero-content">
								<div class="hero-about hero_padding">
									<span class="dot sol"></span>
									<h1 class ="sol">SOLUTIONS</h1>
									<p class="sol left">
										기업의 비즈니스 컨셉 이해 <br> 사용자 경험 중심의 디자인 패턴 분석 <br> BIG
										DATA 분석과 리서치를 통해 <br> <strong>크리에이티브한 디자인</strong>과 <strong>솔루션</strong>을 제공합니다.
									</p>
									<div class="about_btn">
										<button class="btn btn_about_sol" type="button">VIEW
											MORE</button>
									</div>
								</div>
							</div>
					</div>
 					<div class="item">
						
							<div class="wrap-hero-content">
								<div class="hero-about hero_padding">
									<span class="dot fine"></span>
									<h1 class="fine">FineInsight</h1>
									<P class="left fine">
										파인인사이트는 사용자 경험 중심의 <br> 서비스 디자인을 연구하는
										<br> <strong>CREATIVE DESIGN GROUP</strong>입니다.
									</P>
									<div class="about_btn">
										<button class="btn btn_about_fine" type="button">OUR WORKS</button>
									</div>
								</div>
							</div>
					</div>
					
				</div>
<!-- Controls -->
				<!-- <a class="left carousel-control" href="#carousel-example-generic"
					role="button" data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> --> <a class="right carousel-control" href="#carousel-example-generic"
					role="button" data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true" style="color:black;"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>

		</div>
	</div>
</body>
</html>