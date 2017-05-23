<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/ionicons.min.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/style.css">

<script src="assets/js/jquery-1.9.1.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

</head>

<body>


  
	<div id="wrap">
	<%@ include file="/include/header.jsp"%>
   <div class="container modu" id="container">
 
   <div class="half">
   	 <img src="assets/images/001.png" alt="...">
   </div>
 <div class="halfother" role="tabpanel">

			<div class="wdwd">
			<!-- Nav tabs -->
			<ul class="nav nav-tabs mb-45" role="tablist">
				<li role="presentation" class="active interval "><a href="#OVERVIEW"
					aria-controls="home" role="tab" data-toggle="tab">OVERVIEW</a></li>
				<li role="presentation" class="interval"><a href="#INTRODUCTION"
					aria-controls="profile" role="tab" data-toggle="tab">INTRODUCTION</a></li>
				<li role="presentation" class="interval"><a href="#HISTORY"
					aria-controls="messages" role="tab" data-toggle="tab">HISTORY</a></li>
					<li role="presentation" class="interval"><a href="#OGANIZATION"
					aria-controls="profile" role="tab" data-toggle="tab">OGANIZATION</a></li>
				<li role="presentation" class="interval"><a href="#LICENCE"
					aria-controls="messages" role="tab" data-toggle="tab">LICENCE</a></li>

			</ul>
			</div>

			<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="INTRODUCTION">
				<div class="tab-con">
				<div class="tab-title">
				<img class="" src="assets/images/stroke.png" alt="..."><p class="tab-subtitle">INTRODUCTION</p>
				</div>
				<img class="" src="assets/images/introduction.png" alt="...">
				<div class="overview-content">
				<p class="overview-p">회사명</p><p>주식회사 이안베스트<br><strong>IANBEST.CO.LTD</strong></p>
				</div>
				<div class="overview-content">
				<p class="overview-p">대표</p><p>박영수</p>
				</div>
				<div class="overview-content">
				<p class="overview-p">설립일</p><p>2007년 12월 05일</p>
				</div>
				<div class="overview-content">
				<p class="overview-p">주소</p><p>서울시 강남구 논현로76길 25 꿈희망미래빌딩 5층</p>
				</div>
				<div class="overview-content">
				<p class="overview-p">인증현황</p><p>실내건축공사업 | 대한전문건설협회 정회원 | 실내건축공사협의회 정회원<br>건물시설관리업 | 위생관리업 | 시설경비업<br>디자인전문회사(환경분야) | 부설 디자인연구소 | 벤처인증기업</p>
				</div>
				</div>
				</div>

				<div role="tabpanel" class="tab-pane" id="INTRODUCTION">
				
				</div>

				<div role="tabpanel" class="tab-pane" id="HISTORY">
					

				</div>
				
				<div role="tabpanel" class="tab-pane" id="OGANIZATION">
					

				</div>
				
				<div role="tabpanel" class="tab-pane" id="LICENCE">
					

				</div>
				
				
				

		

		</div>
		</div>
 
    
      
      
      
   <%@ include file="/include/footer.jsp"%>
   </div>


   </div>

</body>

</html>