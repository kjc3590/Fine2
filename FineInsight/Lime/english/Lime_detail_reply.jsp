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
<%
	List<Lime> resvList = null;
	List<Lime> workList = null;
	LimeDao dao = LimeDao.getInstance();
	String Question_idS = request.getParameter("q_id");
	int Question_id = Integer.parseInt(Question_idS);

	resvList = dao.workListDetail(Question_id);
	workList = dao.replyDetail(Question_id);
%>
</head>

<body>
	<section id="content">
		<div class="container">

			<div class="card">
				<%@ include file="../include/header3.jsp"%>
				<div class="card-header">
					<h2 class="line3">REQUEST LIST</h2>

				</div>
				<div class="card-body card-padding">

					<%
						for (Lime lime : resvList) {
					%>
					<form class="form-horizontal">
						<div class="row">
							<div class="col-md-4">
								<div class="coco col-md-5 no-padding">
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
												<p style="padding-top: 12px;">DIRECT NUMBER</p>
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
												<p style="PADDING-TOP: 12PX;">E-MAIL</p>
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
								<div class="down col-md-7  no-padding">
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
												placeholder="<%=lime.getQuestion_content()%>"
												readonly="readonly"></textarea>
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

									System.out.println(member_name);
									System.out.println(manager);
									System.out.println(reply_keyword);
									System.out.println(question_progress);
									System.out.println(division);
									System.out.println(reply_method);
									System.out.println(reply_priority);
									System.out.println(detailDivision);
									System.out.println(reply_term);
									System.out.println(reply_day);
									System.out.println(reply_content);
							%>
							<div class="col-md-4">
								<div class="coco2 col-md-5  no-padding">

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
													name="manager" value="<%=manager%>" readonly="readonly">
											</div>

										</div>
									</div>


									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													name="keyword" value="<%=reply_keyword%>"
													readonly="readonly">
											</div>
										</div>
									</div>


								</div>
							</div>


							<div class="col-md-4">
								<div class="coco2 col-md-5">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p class="ne" style="padding-top: 1px;">WORK CATEGORY</p>
											</div>

										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p style="PADDING-TOP: 12PX;">WORK METHOD</p>
											</div>

										</div>
									</div>
								</div>
								<div class="col-md-7">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													value="<%=division%>" name="reply_method"
													readonly="readonly">
											</div>
										</div>
									</div>


									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													value="<%=reply_method%>" name="reply_method"
													readonly="readonly">
											</div>
										</div>
									</div>


								</div>
							</div>

							<div class="col-md-4">

								<div class="coco2 col-md-5 ">
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
												<p>SCHEDULED DATE</p>
											</div>
										</div>
									</div>
								</div>

								<div class="col-md-7  no-padding">

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													value="<%=question_progress%>" name="reply_method"
													readonly="readonly">
											</div>
										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													value="ESTIMATED TIME OF CLEARANCE" name="reply_cday"
													readonly="readonly">
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
												name="reply_content" readonly="readonly"><%=lime.getReply_content()%></textarea>
										</div>
									</div>

								</div>
							</div>

							<input type="hidden" value="<%=lime.getReply_id()%>"
								name="reply_id">
							<%
								}
							%>


							<div class="col-md-12">
								<div class="col-md-10"></div>
								<div class="col-md-2">
									<div class="col-md-6">
										<div class="form-group">
											<a href="Lime_list.jsp"> <input type="button"
												value="CHECK" class="btn btn-two m-r-10"
												style="margin-left: -25px;">

											</a>

										</div>

									</div>
									<div class="col-md-6">
										<div class="form-group">
											<a href="Lime_list.jsp"> <input type="button"
												value="CANCEL" class="btn btn-two m-r-10"
												style="margin-left: 4px;">

											</a>
										</div>

									</div>

								</div>
							</div>

						</div>
					</form>
				</div>
			</div>
			<%@ include file="../include/footer3.jsp"%>
		</div>
	</section>
</body>
</html>