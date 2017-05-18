<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>Lime 유지보수 사이트</title>

<!-- 부트스트랩 -->
<link href="../assets/css/bootstrap.min.css" rel="stylesheet">
<link href="../assets/css/style.css" rel="stylesheet">
<link href="../assets/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="../vendors/material-icons/material-design-iconic-font.min.css"
	rel="stylesheet">
<script src="../assets/js/jquery-3.1.1.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>

</head>
<body>
	<section id="content">
		<div class="container">

			<div class="card">

				<%@ include file="../include/header2.jsp"%>

				<div class="card-header">
					<h2 class="first-line"><a href ="Lime-notice_nd.jsp">공지사항</a></h2>
					<h2 class="line"><a href ="Lime-FAQ_nd.jsp">FAQ</a></h2>
				</div>

				<div class="card-body col-md-12">
					<div class="panel-group" id="accordion">
						<div class="panel">
							<div class="colorp panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapse1">고객센터 운영시간 안내</a>
								</h4>
							</div>
							<div id="collapse1" class="panel-collapse collapse in">
								<div class="border-yellow panel-body col-md-12">
									<div class="p-header">고객센터 운영시간 안내</div>
									<div class="content col-md-12">
										<div class="box-faq">
											<img src="../assets/images/customer.png">
											<div class="bottom-yellow faq-bottom">
												<p>
													<strong>연락처</strong> : 02-565-2920
												</p>
												<p>
													<strong>처리업무</strong> : 원격안내,시스템 복구,기타상담
												</p>
											</div>
										</div>
										<div class="faq-content">
											<p>
												<strong class="bu">근무시간 안내</strong>
											</p>

											<ul class="faq-list">
												<li>09:00 ~ 18:00 (연중무휴)</li>
												<li>평일업무지원</li>
												<li>공휴일 긴급지원</li>
											</ul>




											<p>

												<strong class="bu">1.VNC</strong>
											</p>

											<ul class="faq-list">
												<li>고정IP를 통해 인터넷에 연결</li>
												<li>VNC 서버 설치</li>
												<li>VNC 서버의 Password,IP 주소, 포트</li>
											</ul>


											<p>

												<strong class="bu">2.Remote View (rview)</strong>
											</p>
											<ul class="faq-list">
												<li>고정 또는 유동 IP를 통해 인터넷에 연결</li>
												<li>Remote View Agent 설치</li>

											</ul>


											<p>
											<p>

												<strong class="bu">3.Net Meeting</strong>
											</p>
											</p>

											<ul class="faq-list">
												<li>고정 또는 유동 IP를 통해 인터넷에 연결</li>
												<li>Microsoft Windows계열의 모든 서버</li>
												<li>메디칼스탠다드 기술지원 IP주소</li>

											</ul>

										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="panel">
							<div class="colorp2 panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapse2">업무별 설정안내</a>
								</h4>
							</div>
							<div id="collapse2" class="panel-collapse collapse">
								<div class="border-brightgreen panel-body col-md-12">
									<div class="p-header">업무별 설정안내</div>
									<div class="content col-md-12">
										<div class="box-faq">
											<img src="../assets/images/customer.png">
											<div class="bottom-brightgreen faq-bottom">
												<p>
													<strong>청구,수납설정안내</strong> : 메뉴->청구,수납->옵션
												</p>
												<p>
													<strong>기초세팅</strong> : 메뉴->수가변동사항->기초세팅
												</p>
											</div>
										</div>
										<div class="faq-content">
											<p>
												<strong class="bu">원격지원 서비스 </strong>
											</p>
											<p>
												<span class="content-word">라임HIS의 서비스지원팀과 엔지니어들은 고객에게
													발생하는 문제를 해결하기 위해 고객의 시스템에 원격접속 할 수 있습니다.환경에 따라 다양한 방법을 통해
													원격지원 서비스를 지원합니다.</span>
											<p class="accessibility_red">※ 주의사항: 시스템에 접근하기 위해서는 S/W와
												인터넷 환경이 갖추어져 있어야 합니다.</p>
											</p>




											<p>

												<strong class="bu">1.VNC</strong>
											</p>

											<ul class="faq-list">
												<li>고정IP를 통해 인터넷에 연결</li>
												<li>VNC 서버 설치</li>
												<li>VNC 서버의 Password,IP 주소, 포트</li>
											</ul>


											<p>

												<strong class="bu">2.Remote View (rview)</strong>
											</p>
											<ul class="faq-list">
												<li>고정 또는 유동 IP를 통해 인터넷에 연결</li>
												<li>Remote View Agent 설치</li>

											</ul>


											<p>
											<p>

												<strong class="bu">3.Net Meeting</strong>
											</p>
											</p>

											<ul class="faq-list">
												<li>고정 또는 유동 IP를 통해 인터넷에 연결</li>
												<li>Microsoft Windows계열의 모든 서버</li>
												<li>메디칼스탠다드 기술지원 IP주소</li>

											</ul>

										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="colorp3 panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapse3">원격지원 서비스 안내</a>
								</h4>
							</div>
							<div id="collapse3" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="p-header">원격지원 서비스 안내</div>
									<div class="content col-md-6">
										<div class="box-faq">
											<img src="../assets/images/customer.png">
											<div class="bottom-green faq-bottom">
												<p>
													<strong>청구,수납설정안내</strong> : 메뉴->청구,수납->옵션
												</p>
												<p>
													<strong>기초세팅</strong> : 메뉴->수가변동사항->기초세팅
												</p>
											</div>
										</div>
										<div class="faq-content">
											<p>
												<strong>근무시간 : <span>06:00 ~ 22:00</span> (연중무휴)
												</strong>
											</p>
											<ul class="listype01">
												<li>A 와 B 카운터 사이</li>
												<li>E 와 F 카운터 사이</li>
												<li>G 와 H 카운터 사이</li>
												<li>M 카운터 앞</li>
											</ul>
											<p>
												<strong>근무시간 : <span>07:00 ~ 21:00</span> (연중무휴)
												</strong>
											</p>
											<ul class="listype01">
												<li>면세구역 내 25번 GATE</li>
												<li>면세구역 내 29번 GATE</li>
												<li>신규탑승동(외국항공사터미널) 113번 GATE</li>
											</ul>
										</div>
									</div>
									<div class="content col-md-6">
										<div class="box-faq">
											<img src="../assets/images/customer.png">
											<div class="bottom-green faq-bottom">
												<p>
													<strong>청구,수납설정안내</strong> : 메뉴->청구,수납->옵션
												</p>
												<p>
													<strong>기초세팅</strong> : 메뉴->수가변동사항->기초세팅
												</p>
											</div>
										</div>
										<div class="faq-content">
											<p>
												<strong class="bu">원격지원 서비스 </strong>
											</p>
											<p>
												<span class="content-word">라임HIS의 서비스지원팀과 엔지니어들은 고객에게
													발생하는 문제를 해결하기 위해 고객의 시스템에 원격접속 할 수 있습니다.환경에 따라 다양한 방법을 통해
													원격지원 서비스를 지원합니다.</span>
											<p class="accessibility_red">※ 주의사항: 시스템에 접근하기 위해서는 S/W와
												인터넷 환경이 갖추어져 있어야 합니다.</p>
											</p>




											<p>

												<strong class="bu">1.VNC</strong>
											</p>

											<ul class="faq-list">
												<li>고정IP를 통해 인터넷에 연결</li>
												<li>VNC 서버 설치</li>
												<li>VNC 서버의 Password,IP 주소, 포트</li>
											</ul>


											<p>

												<strong class="bu">2.Remote View (rview)</strong>
											</p>
											<ul class="faq-list">
												<li>고정 또는 유동 IP를 통해 인터넷에 연결</li>
												<li>Remote View Agent 설치</li>

											</ul>


											<p>
											<p>

												<strong class="bu">3.Net Meeting</strong>
											</p>
											</p>

											<ul class="faq-list">
												<li>고정 또는 유동 IP를 통해 인터넷에 연결</li>
												<li>Microsoft Windows계열의 모든 서버</li>
												<li>메디칼스탠다드 기술지원 IP주소</li>

											</ul>

										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="colorp4 panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapse4">프로그램 실행안내</a>
								</h4>
							</div>
							<div id="collapse4" class="panel-collapse collapse">
								<div class="border-Holygreen panel-body">
									<div class="p-header">프로그램 실행 안내</div>
									<div class="col-md-12">
										<div class="box-video embed-responsive embed-responsive-16by9">
											<iframe class="embed-responsive-item"
												src="//www.youtube.com/embed/ePbKGoIGAXY"></iframe>
										</div>
										<div class="faq-content">
											<p>
												<strong class="bu">실행가이드 서비스 </strong>
											</p>
											<p>
												<span class="content-word">라임HIS의 서비스지원팀과 엔지니어들은 고객에게
													발생하는 문제를 해결하기 위해 고객의 시스템에 원격접속 할 수 있습니다.환경에 따라 다양한 방법을 통해
													원격지원 서비스를 지원합니다.</span>
											<p class="accessibility_red">※ 주의사항: 시스템에 접근하기 위해서는 S/W와
												인터넷 환경이 갖추어져 있어야 합니다.</p>
											</p>




											<p>

												<strong class="bu">1.VNC</strong>
											</p>

											<ul class="faq-list">
												<li>고정IP를 통해 인터넷에 연결</li>
												<li>VNC 서버 설치</li>
												<li>VNC 서버의 Password,IP 주소, 포트</li>
											</ul>


											<p>

												<strong class="bu">2.Remote View (rview)</strong>
											</p>
											<ul class="faq-list">
												<li>고정 또는 유동 IP를 통해 인터넷에 연결</li>
												<li>Remote View Agent 설치</li>

											</ul>


											<p>
											<p>

												<strong class="bu">3.Net Meeting</strong>
											</p>
											</p>

											<ul class="faq-list">
												<li>고정 또는 유동 IP를 통해 인터넷에 연결</li>
												<li>Microsoft Windows계열의 모든 서버</li>
												<li>메디칼스탠다드 기술지원 IP주소</li>

											</ul>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
								<%@ include file="../include/footer2.jsp" %>
				</div>






			</div>
		</div>
	</section>
</body>
</html>