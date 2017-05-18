<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>Lime 维护页面</title>

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
	<div id="wrap">

		<div class="container" id ="container"> 
			<div class="card">
				<%@ include file="../include/header2.jsp"%>
				<div class="col-md-12">
					<div class="nav-banner">
						<img class="banner-img" src="../assets/images/banner_ch2.png">
					</div>
				</div>
				<div class="col-md-4">
				
					<div class="login">
					<%
						if(session.getAttribute("id")==null){
					%>		
				<form action="../util/loginUtil.jsp">
						<div class="row">
							<div class="col-md-2">
								<div class="nav-icon">
									<img src="../assets/images/id.png">
								</div>
							</div>
							<div class="col-md-10">
								<div class="icon-text">
									<input type="text" name ="id" class="form-control" placeholder="帐号" style="margin-bottom: 0px">
								</div>
							</div>
						</div>
						
						<div class="row m-b-10">
							<div class="col-md-2">
								<div class="nav-icon">
									<img src="../assets/images/pw.png">
								</div>
							</div>
							<div class="col-md-10">
								<div class="icon-text">
									<input type="password" name ="pw" class="form-control" placeholder="密码"  style="margin-bottom: 0px">
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="Lime_btn">
								<div class="col-md-6">
									<button class="btn1 btn-Lime" type="submit">登录</button>
								</div>
								<div class="col-md-6">
									<button class="btn1 btn-LimeA" type ="button" onclick="location.href='join.jsp'">注册会员</button>
								</div>
							</div>
						</div>
			</form>
						<%
						}else{
						%>
						<div class="row">
							<div class="col-md-12">
							<div class="user-area">
							<img src="../assets/images/logo.png" />
							<span class="megafont"></span>
							</div>
							<p class="user-login">
							Members "<%out.print(session.getAttribute("c_name"));%>"<br>
							<%
							 	out.print(session.getAttribute("name"));
							%>
							会员名欢迎你. 
							</p></div>
						</div>
						
						<div class="row">
							<div class="Lime_btn">
								<div class="col-md-6">
									<button class="btn1 btn-Lime" type="button">会员信息修改</button>
								</div>
								<form action="../util/logoutUtil.jsp">
									<div class="col-md-6">
										<button class="btn1 btn-LimeA" type="submit">退出</button>
									</div>
								</form>
							</div>
						</div>
						<%	
						}
						%>
						
					</div>
				</div>


				<div class="col-md-8">

					<div class="content-head">
						<p class="content-caption">
							<img src="../assets/images/cross.png">公告事项
						</p>
						<p class="line"></p>
					</div>
					<div class="col-md-12">
						<p class="content-caption">[2017] 1月 用戶 UI 修改又 換功能指南 <2017-01-30></p>
						<p class="content-caption">[2017] 1月 用戶 UI 修改又 換功能指南 <2017-01-30></p>
                                                <p class="content-caption">[2017] 1月 用戶 UI 修改又 換功能指南 <2017-01-30></p>
                                                <p class="content-caption">[2017] 1月 用戶 UI 修改又 換功能指南 <2017-01-30></p>
                                                <p class="content-caption">[2017] 1月 用戶 UI 修改又 換功能指南 <2017-01-30></p>
							
					</div>
				</div>
				<div class="col-md-4">
					<div class="content-head">
						<p class="content-caption">
							<img src="../assets/images/cross.png">链接
						</p>
						<p class="line"></p>
					</div>

					<div class="sub-banner">
						<a href="http://fineinsight.kr/">
							<img class="sub-item" src="../assets/images/jung-flat.png">
						</a>
					</div>
				</div>

				<div class="col-md-8">
					<div class="content-head">
						<p class="content-caption">
							<img src="../assets/images/cross.png">选单
						</p>
						<p class="line"></p>
					</div>
					<div class="col-md-4">
						<div class="card-section">
							<img class="card-item" src="../assets/images/jung-remote.png">
						</div>

					</div>
					<div class="col-md-4">
						<div class="card-section">
						<a href="Lime-FAQ_nd.jsp">
							<img class="card-item" src="../assets/images/jung-faq.png">
						</a>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card-section">
						<a href="Lime-video_nd.jsp">
							<img class="card-item" src="../assets/images/jung-edu.png">
						</a>
						</div>
					</div>
				</div>
				<%@ include file="../include/footer2.jsp" %>
			</div>
		</div>
	
</div>
</body>
</html>