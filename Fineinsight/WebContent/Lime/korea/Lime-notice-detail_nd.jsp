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
				<%@ include file="../include/header.jsp" %>

				<div class="card-header" style="padding:23px 6px;">
					<h2 class="line first"><a href ="korea/Lime-notice_nd.jsp">공지사항</a></h2>
					<h2 class="first-line"><a href ="korea/Lime-FAQ_nd.jsp">FAQ</a></h2>
				</div>

				<div class="card-body notice-detail col-md-12 nopadding">

					<div class="col-md-12 nopadding border-bottom">
						<div class="col-md-1 notice-title nopadding">
							<p class="title btn-LimeA">제목</p>
						</div>

						<div class="col-md-7 notice-tcontent toppadding">
							<p class="ncontent">1월30(월) 설날 대체 공휴일 더존IT그룹 휴무 안내</p>
						</div>

						<div class="col-md-1 notice-title nopadding">
							<p class="title2 btn-LimeA">작성일</p>
						</div>

						<div class="col-md-3 notice-wcontent toppadding">
							<p class="ncontent" style="padding-left:30px">2017.01.26</p>
						</div>
					</div>
					<div class="col-md-12 nd-content leftpadding">
						<div class="content-img">
							<img src="../assets/images/logo.png" />
						</div>
						<span>하하하</span>

						<ul class="">
							<li>고정IP를 통해 인터넷에 연결</li>
							<li>VNC 서버 설치</li>
							<li>VNC 서버의 Password,IP 주소, 포트</li>
						</ul>
					</div>
					<div class="col-md-12 nopadding border-bottom border-top">
						<div class="col-md-1 notice-title nopadding">
							<p class="title btn-LimeA">이전</p>
						</div>

						<div class="col-md-11 notice-tcontent toppadding">
							<div class="arrow-up"><img src="../assets/images/arrow_up.gif" /></div><p class="ncontent">1월30(월) 설날 대체 공휴일 더존IT그룹 휴무 안내</p>
						</div>
					</div>

					<div class="col-md-12 nopadding border-bottom">

						<div class="col-md-1 notice-title nopadding">
							<p class="title btn-LimeA">다음</p>
						</div>

						<div class="col-md-11 notice-tcontent toppadding">
							<div class="arrow-down"><img src="../assets/images/arrow_dn.gif" /></div><p class="ncontent">다음글이 없습니다.</p>
						</div>
					</div>


				</div>
				<div class="col-md-12 notice-list nopadding">
					<div class="col-md-11 nopadding"></div>
				<div class="col-md-1 nopadding">
					<button class="btn1 btn-LimeA" onclick=" location.href='korea/Lime-notice_nd.jsp' ">목록</button>
				</div>

			</div>
		</div>
						<%@ include file="../include/footer.jsp" %>
		</div>
	</section>
</body>
</html>