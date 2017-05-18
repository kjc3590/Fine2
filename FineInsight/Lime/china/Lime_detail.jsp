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
<link href="../assets/css/style.css" rel="stylesheet">
<link href="../assets/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="../vendors/material-icons/material-design-iconic-font.min.css"
	rel="stylesheet">
<script src="../vendors/fileinput/fileinput.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<%
	List<Lime> resvList = null;
	List<Lime> QMList = null;
	LimeDao dao = LimeDao.getInstance();
	String q_idS = request.getParameter("q_id");
	int q_id = Integer.parseInt(q_idS);
	
	resvList = dao.resvListDetail(q_id);

	String question_division = null;
	String question_content = null;
	String question_attach = null;
	String question_filename = null;

	String m_id = null;
	String cname = null;
	String name = null;
	String email = null;
	String tel = null;
	String ptel = null;

	for (Lime lime : resvList) {
		question_division = lime.getQuestion_division();
		question_content = lime.getQuestion_content();
		question_attach = lime.getQuestion_attach();
		question_filename = lime.getQuestion_filename();
		name = lime.getMember_name();
		email = lime.getMember_email();
		tel = lime.getMember_tel();
		ptel = lime.getMember_ptel();
		m_id = lime.getMember_id();
	}
	
	cname = dao.CompanyName(q_id);
	String member_id = (String)session.getAttribute("id");
	System.out.println(member_id);
	
%>

</head>
<body>
	<section id="content">
		<div class="container">

			<div class="card">
				<%@ include file="../include/header2.jsp"%>
				<div class="card-header">
					<h2 class="line">要求目录</h2>
				</div>
				<div class="card-body card-padding">

					<form class="form-horizontal">
						<div class="row">
							<div class="col-md-4">
								<div class="coco col-md-5">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p>企业名称</p>
											</div>

										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p>内线号码</p>
											</div>

										</div>
									</div>
								</div>
								<div class="down col-md-7">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													name="request_id" readonly="readonly" value="<%=cname%>">
											</div>

										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													name="prog_name" readonly="readonly" value="<%=tel%>">
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
												<p>请求者</p>
											</div>
										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p>手机号码</p>
											</div>

										</div>
									</div>
								</div>
								<div class="down col-md-7">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control" name="b_name"
													readonly="readonly" value="<%=name%>">
											</div>

										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control" name="tel"
													value="<%=ptel%>" readonly="readonly">
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
												<p>电子邮件</p>
											</div>
										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p>业务区分</p>
											</div>

										</div>
									</div>
								</div>
								<div class="down col-md-7">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control" name="code"
													readonly="readonly" value="<%=email%>">
											</div>

										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													name="phonetel" readonly="readonly"
													value="<%=question_division%>">
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
									<div class="col-md-12">
										<div class="form-group">
											<div class="fg-line">
												<textarea class="leftm form-control" rows="8" name="content" readonly="readonly"><%=question_content%></textarea>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="totop col-md-8">
								
								<div class="col-md-2">
									<div class="form-group">
										<div class="fileinput fileinput-new" data-provides="fileinput">
											<span class="btn btn-primary1 btn-file m-s-10"
												style="padding-top: 12px;"> <a
												href="<%=question_attach%>" download><%=question_filename%></a>
											</span> <span class="fileinput-filename"></span> <a href="#"
												class="close fileinput-exists" data-dismiss="fileinput">&times;</a>
										</div>
									</div>
								</div>
							</div>
							<div class="totop col-md-4"></div>
							<div class="col-md-12">
								<div class="col-md-10"></div>
								<div class="col-md-2">
								
								<%
									if(member_id.equals(m_id)){
								%>
									<div class="col-md-6">
										<div class="form-group">
											<a href="Lime_modify.jsp?q_id=<%=q_id%>"> <input
												class="btn btn-two m-r-10" value="修整" type="button">
											</a>
										</div>
									</div>
								<%
									}else{
								%>
									<div class="col-md-6">
										<div class="form-group">
											<a href="Lime_list.jsp"> <input
												class="btn btn-two m-r-10" value="确定" type="button">
											</a>
										</div>
									</div>
								<%		
									}
								%>
									<div class="col-md-6">
										<div class="form-group">
											<a href="Lime_list.jsp"> <input
												class="btn btn-two m-r-10" value="取消" type="button">
											</a>
										</div>

									</div>

								</div>
							</div>

						</div>
					</form>
				</div>
				<%@ include file="../include/footer2.jsp"%>
			</div>
		</div>
	</section>

</body>
</html>