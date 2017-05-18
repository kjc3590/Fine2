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
<!-- 부트스트랩 -->
<script src="../assets/js/jquery-3.1.1.min.js"></script>
<link href="../assets/css/bootstrap.min.css" rel="stylesheet">
<link href="../assets/css/style1.css" rel="stylesheet">
<link href="../assets/css/bootstrap-theme.min.css" rel="stylesheet">
<link
	href="../vendors/material-icons/material-design-iconic-font.min.css"
	rel="stylesheet">
<script src="../vendors/fileinput/fileinput.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>

<script>
	function searchCheck() {
		//검색
		if (document.frm1.manager.value == "") {
			alert("INSERT STAFF PLEASE");
			return false;
		} else if (document.frm1.division.value == "") {
			alert("INSERT WORK CATEGORY PLEASE.");
			return false;
		} else if (document.frm1.question_progress.value == "") {
			alert("INSERT WORK FLOW PLEASE.");
			return false;
		} else {
			return true;
		}
	}
</script>

<%
	List<Lime> resvList = null;
	List<Lime> workList = null;
	LimeDao dao = LimeDao.getInstance();
	String Question_idS = request.getParameter("Question_id");
	int Question_id = Integer.parseInt(Question_idS);

	resvList = dao.workListDetail(Question_id);
	workList = dao.replyDetail(Question_id);

	String question_attach = null;
	String question_filename = null;
%>
</head>

<body>
	<section id="content">
		<div class="container">

			<div class="card">
				<%@ include file="../include/header3.jsp"%>
				<div class="card-header">
					<h2 class="line2">REQUEST LIST</h2>

				</div>
				<div class="card-body card-padding">

					<%
						for (Lime lime : resvList) {

							question_attach = lime.getQuestion_attach();
							question_filename = lime.getQuestion_filename();
					%>
					<form class="form-horizontal" action="../util/work_insert.jsp"
						name="frm1" onsubmit="return searchCheck();" method="post">
						<div class="row">
							<div class="col-md-4">
								<div class="coco col-md-5">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p style="padding-top: 12px;">COMPANY NAME</p>
											</div>

										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p>CELLPHONE NUMBER</p>
											</div>
										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p style="padding-top: 12px;">ATTACH FILE</p>
											</div>
										</div>
									</div>

								</div>
								<div class="down col-md-7">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													name="request_id" readonly="readonly"
													value="<%=lime.getCompany_name()%>">
											</div>

										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													name="prog_name" readonly="readonly"
													value="<%=lime.getMember_tel()%>">
											</div>

										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<span class="chang2 form-control"
													style="padding-top: 12px;"> 
													<a href="<%=question_attach%>" download><%=question_filename%></a>
												</span>
											</div>
										</div>
									</div>

								</div>
							</div>
							<div class="col-md-4">
								<div class="coco col-md-5">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p style="padding-top: 12px;">CUSTOMER NAME</p>
											</div>
										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p>CELLPHONE NUMBER</p>
											</div>

										</div>
									</div>
								</div>
								<div class="down col-md-7">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control" name="b_name"
													readonly="readonly" value="<%=lime.getMember_name()%>">
											</div>

										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control" name="tel"
													value="<%=lime.getMember_ptel()%>" readonly="readonly">
											</div>

										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="coco col-md-5">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p style="padding-top: 12px;">E-MAIL</p>
											</div>
										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p style="padding-top: 12px;">WORK CATEGORY</p>
											</div>

										</div>
									</div>
								</div>
								<div class="down col-md-7">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control" name="code"
													readonly="readonly" value="<%=lime.getMember_email()%>">
											</div>

										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													name="phonetel" readonly="readonly"
													value="<%=lime.getQuestion_division()%>">
											</div>

										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-12">
									<div class="form-control3">
										<!--  <p>내용(차트번호,환자성명,내원일)과 발생되는 화면의 스크린샷을 첨부해주세요.</p> -->
									</div>
								</div>
							</div>
							<div class="col-md-12">

								<div class="col-md-12">
									<div class="form-group">
										<div class="fg-line">
											<textarea class="leftm form-control" rows="8" name="content"
												readonly="readonly"><%=lime.getQuestion_content()%></textarea>
										</div>
									</div>

								</div>
							</div>
							<%
								}
								for (Lime lime : workList) {
									String manager = (String) session.getAttribute("name");
									String division = lime.getQuestion_division();
									String question_progress = lime.getQuestion_progress();
									String member_name = lime.getMember_name();
									String detailDivision = lime.getDetailDivision();
									String reply_day = lime.getReply_day();
									String reply_keyword = lime.getReply_keyword();
									String reply_priority = lime.getReply_priority();
									String reply_method = lime.getReply_method();
									String reply_term = lime.getReply_term();
									String reply_content = lime.getReply_content();
							%>
							<div class="col-md-4">
								<div class="coco2 col-md-5 no-padding">

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p class="ne">STAFF</p>
											</div>

										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p style="padding-top: 12px;">ORDER OF PRIORITY</p>
											</div>
										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p style="padding-top: 12px;">KEYWORD</p>
											</div>
										</div>
									</div>

								</div>
								<div class="col-md-7">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													name="manager" value="<%=manager%>">
											</div>

										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<select id="" class="chang form-control"
													name="reply_priority">
													<option value="" selected="selected">PRIORITY</option>
													<option value="EMERGENCY"
														<%="EMERGENCY".equals(reply_priority) ? "selected" : ""%>>EMERGENCY</option>
													<option value="HIGH"
														<%="HIGH".equals(reply_priority) ? "selected" : ""%>>HIGH</option>
													<option value="MIDDLE"
														<%="MIDDLE".equals(reply_priority) ? "selected" : ""%>>MIDDLE</option>

												</select>
											</div>
										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													name="keyword" value="<%=reply_keyword%>">
											</div>
										</div>
									</div>


								</div>
							</div>


							<div class="col-md-4">
								<div class="coco2 col-md-5 no-padding">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p class="ne">WORK CATEGORY</p>
											</div>

										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p style="padding-top: 12px;">DETAIL CATEGORY</p>
											</div>
										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p>WORK PLANNING METHOD</p>
											</div>

										</div>
									</div>
								</div>
								<div class="col-md-7">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<select id="" class="chang form-control" name="division">
													<option value="" selected="selected">WORK CATEGORY</option>
													<option value="EMR"
														<%="EMR".equals(division) ? "selected" : ""%>>EMR</option>
													<option value="CDSS"
														<%="CDSS".equals(division) ? "selected" : ""%>>CDSS</option>
													<option value="LIS"
														<%="LIS".equals(division) ? "selected" : ""%>>LIS</option>
													<option value="SMMC"
														<%="SMMC".equals(division) ? "selected" : ""%>>SMMC</option>
													<option value="OTHER"
														<%="OTHER".equals(division) ? "selected" : ""%>>OTHER</option>
												</select>
											</div>

										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<select id="" class="chang form-control"
													name="detailDivision">
													<option value="" selected="selected">DETAIL
														CATEGORY</option>
												</select>
											</div>
										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													value="<%=reply_method%>" name="reply_method">
											</div>
										</div>
									</div>


								</div>
							</div>

							<div class="col-md-4">

								<div class="coco2 col-md-5 no-padding">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p class="ne">WORK FLOW</p>
											</div>

										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p style="padding-top: 12px;">PERIOD</p>
											</div>

										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p>ESTIMATED TIME OF CLEARANCE</p>
											</div>
										</div>
									</div>
								</div>

								<div class="col-md-7" style="padding-right: 0;">

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<select id="" class="chang form-control"
													name="question_progress">
													<option value="">WORK FLOW</option>
													<option value="REGISTRATION"
														<%="REGISTRATION".equals(question_progress) ? "selected" : ""%>>REGISTRATION</option>
													<option value=RETURN REQUEST"
														<%="RETURN REQUEST".equals(question_progress) ? "selected" : ""%>>RETURN
														REQUEST</option>
													<option value="DEVELOPING"
														<%="DEVELOPING".equals(question_progress) ? "selected" : ""%>>DEVELOPING</option>
													<option value="WORK SUCCESS"
														<%="WORK SUCCESS".equals(question_progress) ? "selected" : ""%>>WORK
														SUCCESS</option>
													<option value="WORK DELAYED"
														<%="WORK DELAYED".equals(question_progress) ? "selected" : ""%>>WORK
														DELAYED</option>
													<option value="DELETE"
														<%="DELETE".equals(question_progress) ? "selected" : ""%>>DELETE</option>
												</select>
											</div>
										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<select id="" class="chang form-control" name="term">
													<option value="" selected="selected">DAY</option>
													<option value="1">1DAY</option>
													<option value="2">2DAY</option>
													<option value="3">3DAY</option>
													<option value="4">4DAY</option>
													<option value="5">5DAY</option>
													<option value="6">6DAY</option>
													<option value="7">7DAY</option>
													<option value="8">8DAY</option>
													<option value="9">9DAY</option>
													<option value="10일">10DAY</option>
													<option value="11일">11DAY</option>
													<option value="12일">12DAY</option>
													<option value="13">13DAY</option>
													<option value="14">14DAY</option>
													<option value="15">15DAY</option>
													<option value="16">16DAY</option>
													<option value="17">17DAY</option>
													<option value="18">18DAY</option>
													<option value="19">19DAY</option>
													<option value="20">20DAY</option>
												</select>
											</div>
										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													value="ESTIMATED TIME OF CLEARANCE" name="reply_day">
											</div>
										</div>
									</div>

								</div>
							</div>

							<div class="col-md-12">

								<div class="form-control3">
									<p>THINGS TO DO</p>

								</div>
							</div>
							<div class="col-md-12">
								<div class="col-md-12">

									<div class="form-group">
										<div class="fg-line">
											<textarea class="leftm form-control" rows="8"
												name="reply_content"><%=lime.getReply_content()%></textarea>
										</div>

									</div>
								</div>
							</div>

							<input type="hidden" value="<%=lime.getReply_id()%>"
								name="reply_id"> <input type="hidden"
								value="<%=question_progress%>" name="progress_ago">

							<div class="col-md-12">
								<div class="col-md-8"></div>
								<div class="col-md-4 no-padding">
									<div class="col-md-4 no-padding">
									</div>
									<div class="col-md-4 no-padding">
										<div class="form-group" style="float: right;">
											<%
												if (question_progress.isEmpty()) {
											%>
											<input type="submit" value="REGIST"
												class="btn btn-two M-R-16">
											<%
												} else {
											%>
											<input type="submit" value="MODIFY"
												class="btn btn-two M-R-16">
											<%
												}
											%>
										</div>
									</div>

									<div class="col-md-4 no-padding">
										<div class="form-group" style="float: right; margin-right: 0;">
											<a href="admin_list.jsp"> <input
												class="btn btn-two M-R-16" value="CANCEL" type="button">
											</a>
										</div>
									</div>
									

								</div>
							</div>
							<%
								}
							%>

						</div>
					</form>
				</div>
			</div>
			<%@ include file="../include/footer3.jsp"%>
		</div>
	</section>
</body>
</html>