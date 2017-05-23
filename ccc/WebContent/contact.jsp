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
<script src="assets/js/nav-border/company.js"></script>
<script src="assets/js/map.js"></script>


</head>

<body>



	<div id="wrap">
		<%@ include file="/include/header.jsp"%>
		<div class="container modu" id="container">

			<div class="half">
				<div class="map-contact">
					<div id="map-canvas"></div>
				</div>
			</div>
			<div class="halfother" role="tabpanel">

				<div class="wdwd">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs mb-45" role="tablist">
						<li role="presentation" class="active interval "><a
							href="#CONTACT INFORMATION" aria-controls="home" role="tab"
							data-toggle="tab">CONTACT INFORMATION</a></li>
						<li role="presentation" class="interval"><a
							href="#IONLINE REQUEST" aria-controls="profile" role="tab"
							data-toggle="tab">ONLINE REQUEST</a></li>


					</ul>
				</div>

				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="CONTACT INFORMATION">
						<div class="tab-con">
							<div class="tab-title">
								<img class="" src="assets/images/stroke.png" alt="...">
								<p class="tab-subtitle">CONTACT INFORMATION</p>
							</div>
							<img class="" src="assets/images/overview.png" alt="...">
							<div class="overview-content">
								<p class="overview-p">회사명</p>
								<p>
									주식회사 이안베스트<br> <strong>IANBEST.CO.LTD</strong>
								</p>
							</div>
							<div class="overview-content">
								<p class="overview-p">대표</p>
								<p>박영수</p>
							</div>
							<div class="overview-content">
								<p class="overview-p">설립일</p>
								<p>2007년 12월 05일</p>
							</div>
							<div class="overview-content">
								<p class="overview-p">주소</p>
								<p>서울시 강남구 논현로76길 25 꿈희망미래빌딩 5층</p>
							</div>
							<div class="overview-content">
								<p class="overview-p">인증현황</p>
								<p>
									실내건축공사업 | 대한전문건설협회 정회원 | 실내건축공사협의회 정회원<br>건물시설관리업 | 위생관리업
									| 시설경비업<br>디자인전문회사(환경분야) | 부설 디자인연구소 | 벤처인증기업
								</p>
							</div>
						</div>
					</div>

					<div role="tabpanel" class="tab-pane" id="INTRODUCTION">


						<div class="tab-con">
							<div class="tab-title">
								<img class="" src="assets/images/stroke.png" alt="...">
								<p class="tab-subtitle">INTRODUCTION</p>
							</div>
							<img class="" src="assets/images/introduction.png" alt="...">
							<div class="overview-content">
								<span>이안베스트에서 제안해드리는 새로운 공간 창조를 경험하세요.<br> 삶의 질이
									향상되면서 나만의 공간을 저마다 가지고 있는 색깔로 표현하고자하는 욕구가 강해졌습니다.<br> 나만의
									공간이란 누구나 모방할 수 없는 아이디어와 기능을 바탕으로 표현 되어졌을 때 비로소 가치를<br>
									다한다고 할 수 있을 것입니다.<br> 이안베스트의 젊은 디자인은 신뢰를 바탕으로 한 번 더 고민하고
									실천함으로써 공간에 다양한 변화를 주고<br> 고객의 공간을 고객의 입장에서 생각하고 디자인함으로써
									최대의 고객 만족을 선사하기 위해 노력하는<br> 마음으로 구성된 팀입니다.<br> 아울러
									고객이 원하고 추구하는 것을 고객 눈높이에 맞추어 보다 실용적이고 편안한 공간을 만드는 것이<br>
									이안베스트에서 지향하는 디자인 정신입니다.
								</span>
							</div>



						</div>



					</div>

					<div role="tabpanel" class="tab-pane" id="HISTORY"></div>

					<div role="tabpanel" class="tab-pane" id="OGANIZATION"></div>

					<div role="tabpanel" class="tab-pane" id="LICENCE"></div>






				</div>
			</div>






		</div>

		<%@ include file="/include/footer.jsp"%>
	</div>
   <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyB_bNNglsjbbOhArM3uMMLm0Qy4aCTPEu4"></script>

</body>

</html>