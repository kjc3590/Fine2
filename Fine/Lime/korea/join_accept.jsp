<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.guestbook.dao.*"%>
<%@ page import="kr.guestbook.domain.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.IOException"%>
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

<script>
	function searchCheck(frm) {
		//검색
		if (frm.keyWord.value == "") {
			alert("검색 단어를 입력하세요.");
			frm.keyWord.focus();
			return;
		}
		frm.submit();
	}
</script>
<%
	request.setCharacterEncoding("UTF-8");

	//한 화면에 몇 개의 글(행, 레코드)을 보여줄지 지정
	int pageSize = 10;

	//선택한 페이지 번호 반환
	String pageNum = request.getParameter("pageNum");
	// 초기 page 설정
	if (pageNum == null) {
		pageNum = "1";
	}
	int currentPage = Integer.parseInt(pageNum);
	int pageN = Integer.parseInt(pageNum) -1 ;
	int count = 0;
	int cnt = 1;

	List<Lime> joinlist = null;
	Lime lime = new Lime();
	LimeDao dao = LimeDao.getInstance();
%>


</head>
<body>
	<section id="content">
		<div class="container">
			<div class="card">
				<%@ include file="../include/header.jsp"%>
				<table class="table table-striped">
					<tr>
						<th>*</th>
						<th>ID</th>
						<th>이름</th>
						<th>업체명</th>
						<th>전화번호</th>
						<th>가입일자</th>
						<th>승인</th>
					</tr>
		<%
				  	count = dao.joinCount();
					if(count > 0){
							pageN = pageN * 10;
				  		joinlist = dao.JoinList(pageN, pageSize);
				  	}
					
					for(Lime join : joinlist){
						if(join.getMember_type().equals("user") || join.getMember_type().equals("admin")){
		%>
					<tr  class="success">
						<td><%=cnt++%></td>
						<td><%=join.getMember_id() %></td>
						<td><%=join.getMember_name() %></td>
						<td><%=join.getCompany_name()%></td>
						<td><%=join.getMember_tel() %></td>
						<td><%=join.getMember_day()%></td>
						<td><button type="button" class="btn btn-success" >승인완료</button></td>
					</tr>
		<% 
						}else{
		%>
					<tr>
						<td><%=cnt++%></td>
						<td><%=join.getMember_id() %></td>
						<td><%=join.getMember_name() %></td>
						<td><%=join.getCompany_name()%></td>
						<td><%=join.getMember_tel() %></td>
						<td><%=join.getMember_day()%></td>
						<td><input type="button" class="btn btn-primary" value="승인" onclick="location.href='../util/joinAcceptUtil.jsp?id=<%=join.getMember_id()%>'"></td>
					</tr>
		<% 
						}
				}
		%>
				</table>

				<div class="col-md-12">
					<nav>
						<div class="yoho">
							<%
								//한 화면에 몇 개의 페이지 번호가 보여지는지 지정
								int pageBlock = 5;
								//총 페이지 수
								int pageCount = (count - 1) / pageSize + 1;
								int startPage = ((currentPage - 1) / pageBlock) * pageBlock + 1;
								int endPage = startPage + pageBlock - 1;

								if (endPage > pageCount)
									endPage = pageCount;
							%>
							<nav>
								<ul class="pagination">
									<%
										if (startPage > pageBlock) {
									%>
									<li>
										<a href="korea/join_accept.jsp?pageNum=<%=startPage - 1%>" aria-label="Previous"> 
											<span aria-hidden="true">&laquo;</span>
										</a>
									</li>
									<%
										} else {
									%>
									<li class="disabled">
										<a href="#" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
										</a>
									</li>
									<%
										}

										for (int i = startPage; i <= endPage; i++) {
											if (i == currentPage) {//페이지번호와 현재 페이지 번호일치
									%>
										<li class="active">
											<a href="#"><%=i%>
												<span class="sr-only">(current)</span>
											</a>
										</li>
									<%
											} else {//페이지번호와 현재 페이지 번호 불일치
									%>
									<li>
										<a href="korea/join_accept.jsp?pageNum=<%=i%>"><%=i%>
										 	<span class="sr-only">(current)</span>
										</a>
									</li>
									<%
											}
										}
										if (endPage < pageCount) {
									%>
									<li>
										<a	href="korea/join_accept.jsp?pageNum=<%=startPage + pageBlock%>"aria-label="Next"> 
											<span aria-hidden="true">&raquo;</span>
										</a>
									</li>
									<%
										}
									%>
								</ul>
							</nav>
						</div>
					</nav>
				</div>
				<%@ include file="../include/footer.jsp"%>
			</div>
		</div>
	</section>
</body>
</html>