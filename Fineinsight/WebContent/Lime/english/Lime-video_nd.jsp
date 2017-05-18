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
				<%@ include file="../include/header3.jsp"%>
				<div class="card-header">
					<h2 class="first-line"><a href="Lime-Edu_nd.jsp">교육안내</a></h2>
					<h2 class="line"><a href="Lime-vidio_nd.jsp">동영상 안내</a></h2>
					<h2 class="first-line2">원격지원 안내(구현중)</h2>
				</div>

				<div class="card-body">

					<div class="landing-tab clearfix">
						<ul class="nav nav-tabs nav-stacked col-md-3 col-sm-5">
							<li class="active"><a class="animated fadeIn" href="#tab_a"
								data-toggle="tab" aria-expanded="false">

									<div class="tab-info">
										<h3>기초정보관리</h3>
									</div>
							</a></li>
							<li class=""><a class="animated fadeIn" href="#tab_d"
								data-toggle="tab" aria-expanded="false">

									<div class="tab-info">
										<h3>OCS 가이드</h3>
									</div>
							</a></li>
							<li class=""><a class="animated fadeIn" href="#tab_b"
								data-toggle="tab">

									<div class="tab-info">
										<h3>청구,수납 가이드</h3>
									</div>
							</a></li>
							<li class=""><a class="animated fadeIn" href="#tab_c"
								data-toggle="tab">

									<div class="tab-info">
										<h3>원무 가이드</h3>
									</div>
							</a></li>

							<li class=""><a class="animated fadeIn" href="#tab_e"
								data-toggle="tab" aria-expanded="false">

									<div class="tab-info">
										<h3>사후 가이드</h3>
									</div>
							</a></li>
						</ul>
						<div class="tab-content col-md-9 col-sm-7">

							<div class="tab-pane animated fadeIn active" id="tab_a">

								<h3>We Are Awwared Winning Company0</h3>
								<div class="video-area">
									<div class="box-video embed-responsive embed-responsive-16by9">
										<iframe class="embed-responsive-item"
											src="//www.youtube.com/embed/ePbKGoIGAXY"></iframe>
									</div>
								</div>
								<p class="landing-p">Over the year we have lots of
									experience in our field. In sit amet massa sapien. Vestibulum
									diam turpis, gravida in lobortis id, ornare a eros. Lorem ipsum
									dolor sit amet, consectetur adipiscing elit. Aliquam sagittis
									nulla non elit dignissim suscipit. Duis lorem nulla, eleifend.</p>

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




							</div>




							<div class="tab-pane animated fadeIn" id="tab_b">
								<h3>We Are Awwared Winning Company1</h3>
								<div class="video-area">
									<div class="box-video embed-responsive embed-responsive-16by9">
										<iframe class="embed-responsive-item"
											src="//www.youtube.com/embed/ePbKGoIGAXY"></iframe>
									</div>
								</div>
								<p class="landing-p">Over the year we have lots of
									experience in our field. In sit amet massa sapien. Vestibulum
									diam turpis, gravida in lobortis id, ornare a eros. Lorem ipsum
									dolor sit amet, consectetur adipiscing elit. Aliquam sagittis
									nulla non elit dignissim suscipit. Duis lorem nulla, eleifend.</p>

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


							</div>




							<div class="tab-pane animated fadeIn" id="tab_c">
								<h3>We Are Awwared Winning Company2</h3>
								<div class="video-area">
									<div class="box-video embed-responsive embed-responsive-16by9">
										<iframe class="embed-responsive-item"
											src="//www.youtube.com/embed/ePbKGoIGAXY"></iframe>
									</div>
								</div>
								<p class="landing-p">Over the year we have lots of
									experience in our field. In sit amet massa sapien. Vestibulum
									diam turpis, gravida in lobortis id, ornare a eros. Lorem ipsum
									dolor sit amet, consectetur adipiscing elit. Aliquam sagittis
									nulla non elit dignissim suscipit. Duis lorem nulla, eleifend.</p>

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
							</div>

							<div class="tab-pane animated fadeIn" id="tab_d">
								<h3>We Are Awwared Winning Company3</h3>
								<div class="video-area">
									<div class="box-video embed-responsive embed-responsive-16by9">
										<iframe class="embed-responsive-item"
											src="//www.youtube.com/embed/ePbKGoIGAXY"></iframe>
									</div>
								</div>
								<p class="landing-p">Over the year we have lots of
									experience in our field. In sit amet massa sapien. Vestibulum
									diam turpis, gravida in lobortis id, ornare a eros. Lorem ipsum
									dolor sit amet, consectetur adipiscing elit. Aliquam sagittis
									nulla non elit dignissim suscipit. Duis lorem nulla, eleifend.</p>
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

							</div>




							<div class="tab-pane animated fadeIn" id="tab_e">
								<h3>We Are Awwared Winning Company4</h3>
								<div class="video-area">
									<div class="box-video embed-responsive embed-responsive-16by9">
										<iframe class="embed-responsive-item"
											src="//www.youtube.com/embed/ePbKGoIGAXY"></iframe>
									</div>
								</div>
								<p class="landing-p">Over the year we have lots of
									experience in our field. In sit amet massa sapien. Vestibulum
									diam turpis, gravida in lobortis id, ornare a eros. Lorem ipsum
									dolor sit amet, consectetur adipiscing elit. Aliquam sagittis
									nulla non elit dignissim suscipit. Duis lorem nulla, eleifend.</p>

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
							</div>
						</div>
						<!-- tab content -->
					</div>
				</div>
			</div>
			<%@ include file="../include/footer3.jsp" %>
		</div>
	</section>
</body>
</html>