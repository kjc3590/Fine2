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
<link href="../assets/css/style.css" rel="stylesheet">
<link href="../assets/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="../vendors/material-icons/material-design-iconic-font.min.css"
	rel="stylesheet">
<script src="../assets/js/jquery-3.1.1.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../assets/js/custom.js"></script>
<script>
	function searchCheck(frm) {
		//검색
		if (frm.keyWord.value == "") {
			alert("检索语 無!");
			frm.keyWord.focus();
			return;
		}
		frm.submit();
	}
</script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#input_ko").focus();
	});
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
	int ii = 1;

	List<Lime> resvList = null;
	Lime lime = new Lime();
	LimeDao dao = LimeDao.getInstance();

	String keyField = "";
	String keyWord = "";
	String sort = "";
	String keyW = (String) session.getAttribute("keyW");
	String keyF = (String) session.getAttribute("keyF");
	String sort2 = (String) session.getAttribute("sort2");

	// keyField session
	if (request.getParameter("keyField") != null) {
		keyField = request.getParameter("keyField");
		session.setAttribute("keyF", keyField);
		keyF = (String) session.getAttribute("keyF");
		lime.setKeyField(keyF);

	} else {
		keyField = null;
		lime.setKeyField(keyF);
	}

	// keyword session
	if (request.getParameter("keyWord") != null) {
		keyWord = request.getParameter("keyWord");
		session.setAttribute("keyW", keyWord);
		keyW = (String) session.getAttribute("keyW");
		lime.setKeyWord(keyW);
	} else {
		keyWord = null;
		lime.setKeyWord(keyW);
	}
	// sort session
	if (request.getParameter("sort") != null) {
		sort = request.getParameter("sort");
		session.setAttribute("sort2", sort);
		sort2 = (String) session.getAttribute("sort2");
		lime.setSort(sort2);
	} else {
		sort = null;
		lime.setSort(sort2);
	}
%>
</head>
<body>
	<div id="wrap">
		<section id="content">
			<div class="container" id="container">
				<div class="card">
					<%@ include file="../include/header2.jsp"%>

					<div class="card-body">
						<div class="nono">
							<div class="col-md-4">
								<form name="serach" method="post" class="form1">
									<select class="choice" name="keyField">
										<option value="">----区分----</option>
										<option value="translation_korean">韩国语</option>
										<option value="translation_manager_korean">负责人(韩国)</option>
										<option value="translation_english">英语</option>
										<option value="translation_manager_english">负责人(英语)</option>
										<option value="translation_chinese">中文</option>
										<option value="translation_manager_chinese">负责人(中文)</option>
									</select> <input type="text" name="keyWord" class="text" /> <input
										class="btn-Lime btn" type="button" value="搜索"
										onclick="searchCheck(form)" class=" btn btn-primary m-r-10" />
								</form>
							</div>
							<div class="col-md-6 no-padding" style="display: flex;">
								<form name="sort" method="post" class="form1">
									<select class="choice" name="sort">
										<option value="">----选择----</option>
										<option value="translation_id">最新</option>
										<option value="translation_type">未翻译</option>
										<option value="translation_cday">翻译完成</option>
									</select> <input class="btn-Lime btn" type="submit" value="排序"
										style="margin-right: 40px;">
								</form>
								<form name="serach" action="../util/reset.jsp"
									style="margin-top: 1px;">
									<input type="hidden" value="trans" name="what"> <input
										class="btn-Lime btn" type="submit" value="初始化">
								</form>
							</div>



						</div>






					</div>

					<div class="col-md-12">
						<div class="table-responsive">

							<form class="form-horizontal" name="update"
								action="../util/update_trans.jsp" method="post">

								<div class="lazenca">
									<div class="totoyo">
										<p class="young0">
											<input class="btn-Lime btn" type="submit" value="保存">
										</p>
									</div>
								</div>

								<table id="data-table-selection"
									class="td2 table table-condensed">
									<thead>
										<tr class="tr-color">
											<th class="table-sort"
												style="border-left: 1px solid transparent; text-align: center;">*</th>
											<th class="table-sort">韩国语</th>
											<th class="table-sort">中文</th>
											<th class="table-sort">英语</th>
											<th class="table-sort">俄罗斯</th>
											<th class="table-sort">登入时间</th>
											<th class="table-sort">完成时间</th>
										</tr>
									</thead>

									<tbody>
										<%
											try {
												pageN = pageN * pageSize;

												count = dao.getCount_translation(lime);
												if (count > 0) {
													resvList = dao.translate(lime, pageN, pageSize);
												}

												for (Lime resv : resvList) {
													String cday = resv.getTranslation_cday();
													if (cday.isEmpty()) {
										%>
										<tr class="tran warning">
											<td class="rowrow" rowspan="2" style="text-align: center;">
												<input type="text" class="form-control4" readonly="readonly"
												value="<%=resv.getTranslation_id()%>" name="id<%=ii%>"
												style="TEXT-ALIGN: CENTER;"> <input type="hidden"
												value="<%=resv.getTranslation_id()%>" name="real_id">
											</td>
											<td><%=resv.getTranslation_korean()%></td>
											<td><input id="input_ch" class="form-control4"
												type="text" autofocus="autofocus" name="trans_ch<%=ii%>"
												value="<%=resv.getTranslation_chinese()%>"></td>
											<td><input id="input_eng" class="form-control4"
												type="text" name="trans_eng<%=ii%>" readonly="readonly"
												value="<%=resv.getTranslation_english()%>"></td>
												<td>Здравствуйте</td>
											<td class="rowrow" rowspan="2" style="TEXT-ALIGN: LEFT;"><%=resv.getTranslation_day()%></td>
											<td class="rowrow" rowspan="2" style="TEXT-ALIGN: LEFT;"><%=resv.getTranslation_cday()%></td>
										</tr>
										<tr class="tran warning">
											<td><%=resv.getTranslation_manager_korean()%></td>
											<td><input type="text" class="form-control4" readonly="readonly"
												value="<%=resv.getTranslation_manager_chinese()%>"
												name="trans_m_c<%=ii%>"></td>
											<td><input type="text" class="form-control4" readonly="readonly"
												value="<%=resv.getTranslation_manager_english()%>"
												name="trans_m_e<%=ii%>"> <input type="hidden"
												value="<%=resvList.size()%>" name="ii"></td>
												<td>Пу́тин</td>
										</tr>
										<%
											} else {
										%>
										<tr class="tran">
											<td class="rowrow" rowspan="2" style="text-align: center;">
												<input type="text" class="form-control4" readonly="readonly"
												value="<%=resv.getTranslation_id()%>" name="id<%=ii%>"
												style="TEXT-ALIGN: CENTER;"> <input type="hidden"
												value="<%=resv.getTranslation_id()%>" name="real_id">
											</td>
											<td><%=resv.getTranslation_korean()%></td>
											<td><input id="input_ch" class="form-control4"
												type="text" autofocus="autofocus" name="trans_ch<%=ii%>"
												value="<%=resv.getTranslation_chinese()%>"></td>
											<td><input id="input_eng" class="form-control4"
												type="text" name="trans_eng<%=ii%>"
												value="<%=resv.getTranslation_english()%>"></td>
												<td>Здравствуйте</td>
											<td class="rowrow" rowspan="2" style="TEXT-ALIGN: LEFT;"><%=resv.getTranslation_day()%></td>
											<td class="rowrow" rowspan="2" style="TEXT-ALIGN: LEFT;"><%=resv.getTranslation_cday()%></td>
										</tr>
										<tr class="tran">
											<td><%=resv.getTranslation_manager_korean()%></td>
											<td><input type="text" class="form-control4"
												value="<%=resv.getTranslation_manager_chinese()%>"
												readonly="readonly" name="trans_m_c<%=ii%>"></td>
											<td><input type="text" class="form-control4"
												readonly="readonly" value="<%=resv.getTranslation_manager_english()%>"
												name="trans_m_e<%=ii%>"> <input type="hidden"
												value="<%=resvList.size()%>" name="ii"></td>
												<td>Пу́тин</td>
										</tr>

										<%
											}
													ii++;
										%>
										<%
											}
										%>

									</tbody>
								</table>


							</form>
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
										<li><a
											href="Lime_translation.jsp?pageNum=<%=startPage - 1%>"
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
										<li><a href="Lime_translation.jsp?pageNum=<%=i%>"><%=i%>
												<span class="sr-only">(current)</span></a></li>
										<%
											}
												}
												if (endPage < pageCount) {
										%>
										<li><a
											href="Lime_translation.jsp?pageNum=<%=startPage + pageBlock%>"
											aria-label="Next"> <span aria-hidden="true">&raquo;</span>
										</a></li>
									</ul>
								</nav>
								<%
									}
									} catch (IOException e) {
										e.printStackTrace();
								%>
								<script type="text/javascript">
									alert("检索语 無!");
									location.href("Lime_translation.jsp");
								</script>
								<%
									} catch (Exception e) {
										e.printStackTrace();
								%>
								<script>
									alert("检索语 無!");
									location.href("Lime_translation.jsp");
								</script>
								<%
									}
								%>
							</div>
						</nav>
					</div>

					<%@ include file="../include/footer2.jsp"%>
				</div>
			</div>
		</section>
	</div>

</body>
</html>