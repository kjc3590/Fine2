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

<script>
	function searchCheck(){
        //검색
        if(document.frm1.manager.value ==""){
            alert("工作负责人  未输入.");
            return false;
        }else if(document.frm1.division.value==""){
            alert("业务区分  未输入.");
            return false;
        }else if(document.frm1.question_progress.value==""){
            alert("工作进行度 未输入.");
            return false;
        }else{
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
				<%@ include file="../include/header2.jsp"%>
				<div class="card-header">
					<h2 class="line">请求列表</h2>

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
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p>附加文件</p>
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
												style="padding-top: 12px;"> <a
												href="<%=question_attach%>" download><%=question_filename%></a>
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
									<div class="col-md-12">
										<div class="form-group">
											<div class="fg-line">
												<textarea class="leftm form-control" rows="8" name="content"
													readonly="readonly"><%=lime.getQuestion_content()%></textarea>
											</div>
										</div>
									</div>
								</div>
							</div>
							<%
								}
								for (Lime lime : workList) {
									String manager = (String)session.getAttribute("name");
									String division = lime.getQuestion_division();
									String question_progress = lime.getQuestion_progress();
									String member_name = lime.getMember_name();
									String detailDivision = lime.getDetailDivision();
									String reply_day= lime.getReply_day();
									String reply_keyword = lime.getReply_keyword();
									String reply_priority = lime.getReply_priority();
									String reply_method = lime.getReply_method();
									String reply_term = lime.getReply_term();
									String reply_content = lime.getReply_content();

							%>
							<div class="col-md-4">
								<div class="coco2 col-md-5">

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p class="ne">工作负责人</p>
											</div>

										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p>优先顺序</p>
											</div>
										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p>关键词</p>
											</div>
										</div>
									</div>

								</div>
								<div class="col-md-7">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													name="manager" value="<%=manager %>">
											</div>

										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<select id="" class="chang form-control"
													name="reply_priority">
													<option value="" selected="selected">优先</option>
													<option value="紧急"
														<%="紧急".equals(reply_priority) ? "selected" : ""%>>紧急</option>
													<option value="高"
														<%="高".equals(reply_priority) ? "selected" : ""%>>高</option>
													<option value="普通"
														<%="普通".equals(reply_priority) ? "selected" : ""%>>普通</option>
													
												</select>
											</div>
										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													name="keyword" value="<%=reply_keyword %>">
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
												<p class="ne">业务区分</p>
											</div>

										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p>详细划分</p>
											</div>
										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p>工作方法</p>
											</div>

										</div>
									</div>
								</div>
								<div class="col-md-7">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<select id="" class="chang form-control" name="division">
													<option value="" selected="selected">业务区分</option>
													<option value="EMR"
														<%="EMR".equals(division) ? "selected" : ""%>>EMR</option>
													<option value="CDSS"
														<%="CDSS".equals(division) ? "selected" : ""%>>CDSS</option>
													<option value="LIS"
														<%="LIS".equals(division) ? "selected" : ""%>>LIS</option>
													<option value="SMMC"
														<%="SMMC".equals(division) ? "selected" : ""%>>SMMC</option>
													<option value="其他"
														<%="其他".equals(division) ? "selected" : ""%>>其他</option>
												</select>
											</div>

										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<select id="" class="chang form-control"
													name="detailDivision">
													<option value="" selected="selected">详细划分</option>
												</select>
											</div>
										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													value="<%=reply_method %>" name="reply_method">
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
												<p class="ne">工作进行度</p>
											</div>

										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p>拱手期间</p>
											</div>

										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p>完成预定日期</p>
											</div>
										</div>
									</div>
								</div>

								<div class="col-md-7">

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<select id="" class="chang form-control"
													name="question_progress">
													<option value="">工作进行度</option>
													<option value="接收"
														<%="接收".equals(question_progress) ? "selected" : ""%>>接收</option>
													<option value="回复邀请"
														<%="回复邀请".equals(question_progress) ? "selected" : ""%>>回复邀请</option>
													<option value="开发中"
														<%="开发中".equals(question_progress) ? "selected" : ""%>>开发中</option>
													<option value="工作完成"
														<%="工作完成".equals(question_progress) ? "selected" : ""%>>工作完成</option>
													<option value=工作保留
														<%="工作保留".equals(question_progress) ? "selected" : ""%>>工作保留</option>
													<option value="删除"
														<%="삭제".equals(question_progress) ? "selected" : ""%>>删除</option>
												</select>
											</div>
										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<select id="" class="chang form-control" name="term">
													<option value="" selected="selected">日</option>
													<option value="1">1日</option>
													<option value="2">2日</option>
													<option value="3">3日</option>
													<option value="4">4日</option>
													<option value="5">5日</option>
													<option value="6">6日</option>
													<option value="7">7日</option>
													<option value="8">8日</option>
													<option value="9">9日</option>
													<option value="10일">10日</option>
													<option value="11일">11日</option>
													<option value="12일">12日</option>
													<option value="13">13日</option>
													<option value="14">14日</option>
													<option value="15">15日</option>
													<option value="16">16日</option>
													<option value="17">17日</option>
													<option value="18">18日</option>
													<option value="19">19日</option>
													<option value="20">20日</option>
												</select>
											</div>
										</div>
									</div>

									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="chang2 form-control"
													value="完成预定日期" name="reply_day">
											</div>
										</div>
									</div>

								</div>
							</div>

							<div class="col-md-12">
								<div class="col-md-12">
									<div class="form-control3">
										<p>工作内容</p>
									</div>
								</div>
							</div>
							<div class="col-md-12">
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
							</div>

							<input type="hidden" value="<%=lime.getReply_id() %>" name="reply_id">
							<input type="hidden" value="<%=question_progress %>" name="progress_ago">

							<div class="col-md-12">
								<div class="col-md-10"></div>
								<div class="col-md-2">
									<div class="col-md-6">
										<div class="form-group">
											<%
						if(question_progress.isEmpty()){
						%>
											<input type="submit" value="登入" class="btn btn-two m-r-10">
											<%
						}else{
						%>
											<input type="submit" value="修整" class="btn btn-two m-r-10">
											<%	
						}
						%>
										</div>
									</div>
									
									<div class="col-md-6">
										<div class="form-group">
											<a href="admin_list.jsp"> 
												<input class="btn btn-two m-r-10" value="取消" type="button">
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
			<%@ include file="../include/footer2.jsp"%>
		</div>
	</section>
</body>
</html>