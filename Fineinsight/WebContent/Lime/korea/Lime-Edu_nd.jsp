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
				<%@ include file="../include/header.jsp"%>
				<div class="card-header" style="padding:23px 6px;">
					<h2 class="line"><a href="Lime-Edu_nd.jsp">교육안내</a></h2>
					<h2 class="first-line2"><a href="Lime-video_nd.jsp">동영상 안내</a></h2>
					<h2 class="first-line2">원격지원 안내(구현중)</h2>
				</div>

				<div class="card-body">
					<div class="body-top">
						<p class="body-subtitle">사전 프로그램 실습교육 진행</p>
						<span class="body-subcontent">파인인사이트는 회원사를 대상으로 프로그램 교육을
							실시합니다. 실습교육을 통해 라임 HIS의 기능과 사용법을 쉽게 익힐 수 있습니다. 특히 HIS를 처음 도입하는<br>
							기업이나 업무가 변경되어 새로운 기능을 익히고자 할 때 많은 도움이 됩니다. 교육 일정은 교육신청자 수에 따라
							탄력적으로 운용됩니다.</span>
					</div>
					<table class="mg-l table tbborder">
						<colgroup>
							<col style="width: 10%">
							<col style="width: 10%">
							<col style="width: 25%">
							<col style="width: 15%">
							<col>
						</colgroup>
						<thead>
							<tr>
								<th class="edu-table">구분</th>
								<th class="edu-table">형태</th>
								<th class="edu-table">목표</th>
								<th class="edu-table">구분</th>
								<th class="edu-table">내용</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td rowspan="8" class="center full-table">오전10시 ~ <br>오후5시
								</td>
								<td rowspan="5" class="center half-table">초보자<br>실습교육
								</td>
								<td rowspan="5" class="center half-table"
									style="letter-spacing: -1px">프로그램의 전반적인 이해와<br>기본적인
									사용방법 습득
								</td>
								<td class="center">회계</td>
								<td>기초등록, 매입/매출, 입출금전표관리, 출력물</td>
							</tr>
							<tr>
								<td class="center">인사/급여</td>
								<td>기초등록, 급여 및 퇴직금계산, 일용직처리, 급여대장</td>
							</tr>
							<tr>
								<td class="center">재고(유통)</td>
								<td>기초등록, 판/구매, 불량처리, 재고조정, 출력물</td>
							</tr>
							<tr>
								<td class="center">재고(제조)</td>
								<td>기초등록, BOM, 판/구매, 작업지시서, 생산, 출력물</td>
							</tr>
							<tr>
								<td class="center">그룹웨어</td>
								<td>공유정보/일정관리, 전자결재/업무관리, 다목적입력/고객관리</td>
							</tr>
							<tr>
								<td rowspan="3" class="center half-table2">중급자<br>실습교육
								</td>
								<td rowspan="3" class="center half-table2"
									style="letter-spacing: -1px">프로그램의 추가기능 설정과<br>여러가지
									활용방법 습득
								</td>
								<td class="center half-table3">회계</td>
								<td>부서/프로젝트별 관리, 외화관리, 매입/매출, 고정자산, 결산전표</td>
							</tr>
							<tr>
								<td class="center half-table3">재고(유통)</td>
								<td>바코드, 단가설정, 온라인주문시스템, 출력물양식설정, AS관리, 이익현황</td>
							</tr>
							<tr>
								<td class="center half-table3">재고(제조)</td>
								<td>공정관리, BOM ,작업지시서, 발주계획, 생산, 원가관리</td>
							</tr>
						</tbody>
					</table>
					<ul class="edutable-bottom">
						<li>공휴일 등 사정에 따라 스케줄이 변동될 수 있습니다.</li>
						<li>참석자 전원에게 점심식사 및 음료와 간식을 제공합니다.</li>
						<li><strong>교육신청 버튼을 클릭하시면 비회원도 신청하여 참여할 수 있습니다.</strong></li>
					</ul>
				</div>
				<%@ include file="../include/footer.jsp" %>
			</div>
		</div>
	</section>
</body>
</html>