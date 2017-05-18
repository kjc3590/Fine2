<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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


<link href="../vendors/material-icons/material-design-iconic-font.min.css"
	rel="stylesheet">
<script src="../assets/js/jquery-3.1.1.min.js"></script>

<script src="../assets/js/bootstrap.min.js"></script>


</head>
<body>
	<div id="wrap">

		<div class="container" id ="container"> 
			<div class="card">
				<%@ include file="../include/header3.jsp"%>
			
					<div class="nav-banner">
						<img class="banner-img" src="../assets/images/banner_eng2.png">
					</div>
			
				<div class="col-md-4 no-padding">
				
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
									<input type="text" name ="id" class="form-control" placeholder="ID" style="margin-bottom: 0px">
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
									<input type="password" name ="pw" class="form-control" placeholder="PASSWD"  style="margin-bottom: 0px">
								</div>
							</div>
						</div>
						
						
						<div class="row">
							<div class="Lime_btn">
								<div class="col-md-6">
									<button class="btn1 btn-Lime" type="submit">LOG-IN</button>
								</div>
								<div class="col-md-6">
									<button class="btn1 btn-LimeA" type ="button" onclick="location.href='join.jsp'">JOIN</button>
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
							WELCOME ABORD 
							</p></div>
						</div>
						
						<div class="row">
							<div class="Lime_btn">
								<div class="col-md-6">
									<button class="btn1 btn-Lime" type="button">MY INFO</button>
								</div>
								<form action="../util/logoutUtil.jsp">
									<div class="col-md-6">
										<button class="btn1 btn-LimeA" type="submit">LOG-OUT</button>
									</div>
								</form>
							</div>
						</div>
						<%	
						}
						%>
						
					</div>
				</div>


				<div class="col-md-8 lfp">

					<div class="content-head">
						<p class="content-caption">
							<img src="../assets/images/cross.png">NOTICE
						</p>
						<p class="line"></p>
					</div>
					<div class="col-md-12">
						<p class="content-caption">[2017] Here are the changes to the user UI and the modified functions in January. <2017-01-30></p>
						<p class="content-caption">[2017] Here are the changes to the user UI and the modified functions in January. <2017-01-30></p>
						<p class="content-caption">[2017] Here are the changes to the user UI and the modified functions in January. <2017-01-30></p>
						<p class="content-caption">[2017] Here are the changes to the user UI and the modified functions in January. <2017-01-30></p>
						<p class="content-caption">[2017] Here are the changes to the user UI and the modified functions in January. <2017-01-30></p>
					</div>
				</div>
				<div class="col-md-4 no-padding">
					<div class="content-head">
						<p class="content-caption">
							<img src="../assets/images/cross.png">LINK
						</p>
						<p class="line"></p>
					</div>

					<div class="sub-banner">
						<a href="http://fineinsight.kr/">
							<img class="sub-item" src="../assets/images/eng-flat.png">
						</a>
					</div>
				</div>

				<div class="col-md-8 lfp">
					<div class="content-head">
						<p class="content-caption">
							<img src="../assets/images/cross.png">MENU
						</p>
						<p class="line"></p>
					</div>
					<div class="col-md-4 nob-padding">
						<div class="card-section">
							<img class="card-item" src="../assets/images/eng-remote.png">
						</div>

					</div>
					<div class="col-md-4 nob-padding">
						<div class="card-section">
						<a href="Lime-FAQ_nd.jsp">
							<img class="card-item" src="../assets/images/eng-faq.png">
						</a>
						</div>
					</div>
					<div class="col-md-4 nob-padding">
						<div class="card-section">
						<a href="Lime-video_nd.jsp">
							<img class="card-item" src="../assets/images/eng-edu.png">
						</a>
						</div>
					</div>
				</div>
				<%@ include file="../include/footer3.jsp" %>
			</div>
		</div>
	
</div>
</body>
</html>