<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>My Now Amazing Webpage</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/style-service.css" rel="stylesheet">
<link href="assets/vendors/slick/slick.css" rel="stylesheet">
</head>
<body>
<div id="preloader">
		<div id="status">
			<img alt="logo" src="assets/images/fine-logo.png">
		</div>
	</div>
	<%@ include file="/include/sidebar.jsp"%>
	<div id="nodap">

		<div class="well">
			
			<div class="info-area">
			<h2>Web Develope Service</h2>
			<div class="info-box">
			<div class="col-md-8">
			<img src="assets/images/posa.png">
			</div>
			<div class="col-md-4 text-area">
			<h2>호돈</h2>
			<p>날두는사실ㅈ밥</p>
			<p>호돈은돼지</p>
			<h2>메시는?</h2>
			<span></span><p>메탈</p>
			<span></span><p>앱팔</p>
			<span></span><p>매선실세</p>
			<button>탈세셀로나</button>
			</div>
			</div>
			</div>
			
			<div class="carousel-header">
				<h2>RELATED PORTFOLIO ITEMS</h2>
			</div>
	
   <div class="your-class">
      <div class="imgslot"><img src="assets/images/sampleimg.jpg"></div>
     
      <div class="imgslot"><img src="assets/images/sampleimg.jpg"></div>
      
      <div class="imgslot"><img src="assets/images/sampleimg.jpg"></div>
     
      <div class="imgslot"><img src="assets/images/sampleimg.jpg"></div>
     
      <div class="imgslot"><img src="assets/images/sampleimg.jpg"></div>
     
      <div class="imgslot"><img src="assets/images/sampleimg.jpg"></div>
   
   </div>
   </div></div>

	<script src="assets/js/jquery-3.1.1.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/service-detail.js"></script>
	<script src="assets/js/sidebar_service.js"></script>
	<script src="assets/vendors/slick/slick.js"></script>

   <script type="text/javascript">
    $(document).ready(function(){
       $('.your-class').slick({
            dots: false,
            infinite: false,
            speed: 300,
           /*  variableWidth: true, */
            slidesToShow: 4,
            slidesToScroll: 4,
            responsive: [
              {
                breakpoint: 1024,
                settings: {
                  slidesToShow: 3,
                  slidesToScroll: 3,
                  infinite: true,
                  dots: false
                }
              },
              {
                breakpoint: 600,
                settings: {
                  slidesToShow: 2,
                  slidesToScroll: 2
                }
              },
              {
                breakpoint: 480,
                settings: {
                  slidesToShow: 1,
                  slidesToScroll: 1
                }
              }
              // You can unslick at a given breakpoint now by adding:
              // settings: "unslick"
              // instead of a settings object
            ]
          });
    });
     </script>

</body>
</html>
