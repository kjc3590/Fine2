<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.guestbook.dao.*"%>
<%@ page import="kr.guestbook.domain.*"%>
<%@ page import="java.util.List"%>
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
	String id = (String) session.getAttribute("id");
	Lime lime = new Lime();
	LimeDao dao = LimeDao.getInstance();
	lime = dao.Login(id);
%>
<script>
	function searchCheck() {
		//검색
		if (document.frm1.division.value == "") {
			alert("INSERT WORK CATEGORY");
			return false;
		} else {
			return true;
		}
	}
</script>

</head>
<body>
	<section id="content">
		<div class="container">

			<div class="card">
				<%@ include file="../include/header3.jsp"%>
				<div class="card-header">
					<h2 class="line">REQUEST LIST</h2>
				</div>

				<div class="card-body card-padding">
					<form class="form-horizontal" name="frm1"
						action="../util/questionUtil.jsp" method="post"
						enctype="multipart/form-data" onsubmit="return searchCheck();">
						<div class="row">
							<div class="col-md-4">
								<div class="coco col-md-5 no-padding">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p style="padding-top: 11px;">COMPANY NAME</p>
											</div>
										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p style="padding-top: 11px;">DIRECT NUMBER</p>
											</div>

										</div>
									</div>
								</div>
								<div class="down col-md-7">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="form-control chang2"
													name="company_name" value="<%=lime.getCompany_name()%>"
													readonly="readonly">
											</div>

										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="form-control chang2" name="tel"
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
												<p style="padding-top: 11px;">CUSTOMER NAME</p>
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
												<input type="text" class="form-control chang2"
													name="member_name" value="<%=lime.getMember_name()%>"
													readonly="readonly">
											</div>

										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="form-control chang2" name="ptel"
													value="<%=lime.getMember_ptel()%>">
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
												<p style="padding-top: 11px;">E-MAIL</p>
											</div>
										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control1">
												<p style="padding-top: 11px;">WORK CATEGORY</p>
											</div>
										</div>
									</div>
								</div>

								<div class="down col-md-7">
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<input type="text" class="form-control chang2" name="email"
													value="<%=lime.getMember_email()%>">
											</div>

										</div>
									</div>
									<div class="form_group">
										<div class="fg-line">
											<div class="form-control">
												<select id="" class="chang form-control" name="division">
													<option value="" selected="selected">WORK CATEGORY</option>
													<option value="EMR">EMR</option>
													<option value="CDSS">CDSS</option>
													<option value="LIS">LIS</option>
													<option value="SMMC">SMMC</option>
													<option value="기타">OTHERS</option>
												</select>
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
												placeholder="INSERT CHART NUMBER AND PATIENTNAME AND INDATE AND ADD SCREENSHOT PLEASE "></textarea>
										</div>
									</div>
								</div>

							</div>
							<div class="totop col-md-8">
								<div class="col-md-12">
									<div class="form-group">
										<div class="fileinput fileinput-new" data-provides="fileinput">
											<span class="btn btn-primary1 btn-file m-s-10"
												style="padding-top: 13px; font-weight: 600; text-align: center; color: #333333; font-size: 16px; border-radius: 0px; box-shadow: none; width: 180px;">
												<span class="fileinput-new" style="margin-left: -6px;">FILE
													SELECT</span> <input type="file" name="uploadFile">
											</span> <span class="fileinput-filename"></span> <a href="#"
												class="close fileinput-exists" data-dismiss="fileinput">&times;</a>
										</div>
									</div>
								</div>



							</div>
							<div class="totop col-md-4"></div>
							<div class="col-md-12">
								<div class="col-md-9 no-padding"></div>
								<div class="col-md-3 no-padding">
									<div class="col-md-6 no-padding">
										<div class="form-group no-padding" style="float: right;">
											<input class="btn btn-two m-r-10" type="submit"
												value="REGIST">

										</div>

									</div>
									<div class="col-md-6 no-padding">
										<div class="form-group no-padding"
											style="float: right; margin-right: 0;">
											<a href="Lime_list.jsp"> <input
												class="btn btn-two m-r-16" type="button" value="CANCEL">
											</a>
										</div>

									</div>

								</div>
							</div>

						</div>
					</form>
				</div>
				<%@ include file="../include/footer3.jsp"%>
			</div>
		</div>
	</section>

</body>
</html>