<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>



<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Scattered Polaroids Gallery</title>
<!-- <meta name="description"
	content="Scattered Polaroids Gallery: A flat-style take on a Polaroid gallery" />
<meta name="keywords"
	content="scattered polaroids, image gallery, javascript, random rotation, 3d, backface, flat design" />
<meta name="author" content="Codrops" /> -->
<!-- <link rel="shortcut icon" href="../favicon.ico"> -->
<!-- <link rel="stylesheet" type="text/css" href="assets/css/normalize.css" /> -->
<!-- <link rel="stylesheet" type="text/css" href="assets/css/demo.css" />
<link rel="stylesheet" type="text/css" href="assets/css/component.css" /> -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/style-service.css" rel="stylesheet">
<link href="assets/vendors/slick/slick.css" rel="stylesheet">

<!-- 앞뒤 소스
<span class="glyphicon glyphicon-triangle-left"></span>
 -->
<script type="text/javascript">
 </script>

</head>
<body style="background: transparent;">
	<div id="preloader">
		<div id="status">
			<img alt="logo" src="assets/images/fine-logo.png">
		</div>
	</div>
	<%@ include file="/include/sidebar.jsp"%>
	<div id="nodap">

		<div class="well">
			<div class="carousel-header">
				<h2>RELATED PORTFOLIO ITEMS</h2>
			</div>
			<div id="myCarousel" class="carousel fdi-Carousel slide">
				<!-- Carousel items -->
				<div class="carousel fdi-Carousel slide" id="eventCarousel"
					data-interval="0">
					<div class="carousel-inner onebyone-carosel">
						<div class="item active">
							<div class="col-md-4">
								<a href="#"><img src="assets/images/sampleimg.jpg"
									class="img-responsive center-block"></a>

							</div>
						</div>
						<div class="item">
							<div class="col-md-4">
								<a href="#"><img src="assets/images/sampleimg.jpg"
									class="img-responsive center-block"></a>

							</div>
						</div>
						<div class="item">
							<div class="col-md-4">
								<a href="#"><img src="assets/images/sampleimg.jpg"
									class="img-responsive center-block"></a>

							</div>
						</div>
						<div class="item">
							<div class="col-md-4">
								<a href="#"><img src="assets/images/sampleimg.jpg"
									class="img-responsive center-block"></a>

							</div>
						</div>
						<div class="item">
							<div class="col-md-4">
								<a href="#"><img src="assets/images/sampleimg.jpg"
									class="img-responsive center-block"></a>

							</div>
						</div>
						<div class="item">
							<div class="col-md-4">
								<a href="#"><img src="assets/images/sampleimg.jpg"
									class="img-responsive center-block"></a>

							</div>
						</div>
					</div>
					<a class="left carousel-control" href="#eventCarousel"
						data-slide="prev"><span
						class="glyphicon glyphicon-triangle-left"></span></a> <a
						class="right carousel-control" href="#eventCarousel"
						data-slide="next"><span
						class="glyphicon glyphicon-triangle-right"></span></a>
				</div>
				<!--/carousel-inner-->
			</div>
			<!--/myCarousel-->
		</div>
		<!--/well-->



	</div>
	<!-- /container -->

	<script src="assets/js/jquery-3.1.1.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/service-detail.js"></script>
	<script src="assets/js/sidebar_service.js"></script>
	<script src="assets/vendors/slick/slick.js"></script>

	

</body>
</html>