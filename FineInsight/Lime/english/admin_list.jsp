<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.guestbook.dao.*"%>
<%@ page import="kr.guestbook.domain.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.IOException"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>Lime 유지보수 사이트</title>

<!-- 부트스트랩 -->
<link href="../assets/css/bootstrap.min.css" rel="stylesheet">
<link href="../assets/css/style1.css" rel="stylesheet">
<link href="../assets/css/bootstrap-theme.min.css" rel="stylesheet">
<link
	href="../vendors/material-icons/material-design-iconic-font.min.css"
	rel="stylesheet">
<script src="../assets/js/jquery-3.1.1.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/custom.js"></script>
<script>
   function searchCheck(frm) {
      //검색
      if (frm.keyWord.value == "") {
         alert("INSERT SEARCH WORD PLEASE.");
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
   int pageN = Integer.parseInt(pageNum) - 1;
   int startRow = (currentPage - 1) * pageSize + 1;
   int endRow = currentPage * pageSize;
   int count = 0;
   int cnt = 1;

   List<Lime> resvList = null;
   Lime lime = new Lime();
   LimeDao dao = LimeDao.getInstance();

   String keyField = "";
   String keyWord = "";
   String sort = "";
   String keyW = (String) session.getAttribute("keyWL");
   String keyF = (String) session.getAttribute("keyFL");
   String sort2 = (String) session.getAttribute("sort2L");
   String Manager = null;

   // keyField session
   if (request.getParameter("keyField") != null) {
      keyField = request.getParameter("keyField");
      session.setAttribute("keyFL", keyField);
      keyF = (String) session.getAttribute("keyFL");
      lime.setKeyField(keyF);

   } else {
      keyField = null;
      lime.setKeyField(keyF);

   }

   // keyword session
   if (request.getParameter("keyWord") != null) {
      keyWord = request.getParameter("keyWord");
      session.setAttribute("keyWL", keyWord);
      keyW = (String) session.getAttribute("keyWL");
      lime.setKeyWord(keyW);

   } else {
      keyWord = null;
      lime.setKeyWord(keyW);

   }
   // sort session
   if (request.getParameter("sort") != null) {
      sort = request.getParameter("sort");
      session.setAttribute("sort2L", sort);
      sort2 = (String) session.getAttribute("sort2L");
      lime.setSort(sort2);
   } else {
      sort = null;
      lime.setSort(sort2);
   }
	String country = (String)session.getAttribute("country");
	lime.setCountry(country);
%>
</head>
<body>
	<section id="content">
		<div class="container">

			<div class="card">
				<%@ include file="../include/header3.jsp"%>
				<div class="card-card">
					<div class="card-header">
						<h2 class="line2">
							<a href="admin_list.jsp">REQUEST LIST</a>
						</h2>
					</div>

					<div class="card-body">
						<div class="col-md-6 no-padding">
							<form name="serach" method="post" class="form1">
								<select class="choice" name="keyField">
									<option value="All">CHOICE</option>
									<option value="a.question_id">No.</option>
									<option value="c.company_name">COMPANY NAME</option>
									<option value="a.member_name">CUSTOMER NAME</option>
									<option value="a.question_manager">STAFF NAME</option>
									<option value="a.question_progress">WORK FLOW</option>
									<option value="a.question_division">WORK CATEGORY</option>
									<option value="a.question_content">CONTENTS OF REQUEST</option>
								</select> <input type="text" name="keyWord" class="text" /> <input
									class="btn-Lime btn" type="button" value="SEARCH"
									onclick="searchCheck(form)" class=" btn btn-primary m-r-10" />
							</form>
						</div>
						<div class="hoho col-md-6 no-padding">
							<form name="sort" method="post" class="form1"
								style="margin-right: 40px;">
								<select class="choice" name="sort">
									<option value="">SEARCH</option>
									<option value="c.company_name">COMPANY NAME</option>
									<option value="b.reply_priority">ORDER OF PRIORITY</option>
									<option value="a.question_progress">WORK FLOW</option>
									<option value="a.question_id">NEW</option>
								</select> <input class="btn-Lime btn" type="submit" value="ALIGN"
									class=" btn btn-primary m-r-10" />
							</form>
							<form name="serach" action="../util/reset.jsp">
								<input type="hidden" value="admin" name="what">
								<input class="btn-Lime btn" type="submit" value="RESET"
									style="margin-top: 1px; margin-left: 231px;">
							</form>
						</div>


					</div>
					<div class="col-md-12 no-padding">
						<div class="table-responsive">
							<table id="data-table-selection" class="table table-condensed">
								<thead>
									<tr class="tr-color">
										<th class="table-sort" style="padding-bottom: 12px;">NO.</th>
										<th class="table-sort">COMPANY</th>
										<th class="table-sort">REQUEST TIME</th>
										<th class="table-sort">RECEIPT TIME</th>
										<th class="table-sort">CUSTOMER</th>
										<th class="table-sort">MANAGER</th>
										<th class="table-sort">WORK TYPE</th>
										<th class="table-sort">WORK FLOW</th>
										<th class="table-sort">PRIORITY</th>
										<th class="table-sort">CONTENT</th>
									</tr>
								</thead>
								<tbody>
							<%
                              try {

                                 pageN = pageN * pageSize;

                                 count = dao.getCount(lime);
                                 if (count > 0) {
                                    resvList = dao.resvList(lime, pageN, pageSize);
                                 }

                                 for (Lime resv : resvList) {

                                    String Company_name = dao.CompanyName(resv.getQuestion_id());

                                    String progress = resv.getQuestion_progress();
                                    String content = resv.getQuestion_content();
                                    if (content.length() > 10) {
                                       content = content.substring(0, 10) + "...";
                                    }
                                    if (progress.isEmpty()) {
                           %>
									<tr class="pdrl12" style="cursor: pointer;"
										onclick="location.href='admin_detail.jsp?Question_id=<%=resv.getQuestion_id()%>'">
										<td><%=resv.getQuestion_id()%></td>
										<td><%=Company_name%></td>
										<td><%=resv.getQuestion_day()%></td>
										<td><%=resv.getReply_day()%></td>
										<td><%=resv.getMember_name()%></td>
										<td><%=resv.getQuestion_manager()%></td>
										<td><%=resv.getQuestion_division()%></td>
										<td><%=progress%></td>
										<td><%=resv.getReply_priority()%></td>
										<td><%=content%></td>
									</tr>
									<%
                              } else if ("WORK SUCCESS".equals(progress)) {
                           %>
									<tr class="success pdrl12" style="cursor: pointer;"
										onclick="location.href='admin_detail.jsp?Question_id=<%=resv.getQuestion_id()%>'">
										<td><%=resv.getQuestion_id()%></td>
										<td><%=Company_name%></td>
										<td><%=resv.getQuestion_day()%></td>
										<td><%=resv.getReply_day()%></td>
										<td><%=resv.getMember_name()%></td>
										<td><%=resv.getQuestion_manager()%></td>
										<td><%=resv.getQuestion_division()%></td>
										<td><%=progress%></td>
										<td><%=resv.getReply_priority()%></td>
										<td><%=content%></td>
									</tr>
									<%
                              } else {
                           %>
									<tr class="warning pdrl12" style="cursor: pointer;"
										onclick="location.href='admin_detail.jsp?Question_id=<%=resv.getQuestion_id()%>'">
										<td><%=resv.getQuestion_id()%></td>
										<td><%=Company_name%></td>
										<td style="min-width: 138px;"><%=resv.getQuestion_day()%></td>
										<td style="min-width: 138px;"><%=resv.getReply_day()%></td>
										<td><%=resv.getMember_name()%></td>
										<td><%=resv.getQuestion_manager()%></td>
										<td><%=resv.getQuestion_division()%></td>
										<td><%=progress%></td>
										<td><%=resv.getReply_priority()%></td>
										<td style="min-width: 138px;"><%=content%></td>
									</tr>
									<%
                              }
                                 }
                           %>
								</tbody>
							</table>
						</div>
					</div>
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
										<li><a href="admin_list.jsp?pageNum=<%=startPage - 1%>"
											aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
										</a></li>
										<%
                                 } else {
                              %>
										<li class="disabled"><a href="#" aria-label="Previous">
												<span aria-hidden="true">&laquo;</span>
										</a></li>
										<%
                                 }

                                    for (int i = startPage; i <= endPage; i++) {
                                       if (i == currentPage) {//페이지번호와 현재 페이지 번호일치
                              %>
										<li class="active"><a href="#"><%=i%> <span
												class="sr-only">(current)</span></a></li>
										<%
                                 } else {//페이지번호와 현재 페이지 번호 불일치
                              %>
										<li><a href="admin_list.jsp?pageNum=<%=i%>"><%=i%> <span
												class="sr-only">(current)</span></a></li>
										<%
                                 }
                                    }
                                    if (endPage < pageCount) {
                              %>
										<li><a
											href="admin_list.jsp?pageNum=<%=startPage + pageBlock%>"
											aria-label="Next"> <span aria-hidden="true">&raquo;</span>
										</a></li>
									</ul>
								</nav>
								<%
                           }
                              } catch (Exception e) {
                                 session.removeAttribute("keyWL");
                                 session.removeAttribute("keyFL");
                                 response.getWriter().print("<script>alert('NO SEARCH WORD')</script>");
                                 response.getWriter().print("<script>location.href='admin_list.jsp'</script>   ");
                              }
                        %>
							</div>
						</nav>
					</div>
				</div>
				<%@ include file="../include/footer3.jsp"%>
			</div>
		</div>
	</section>

</body>
</html>