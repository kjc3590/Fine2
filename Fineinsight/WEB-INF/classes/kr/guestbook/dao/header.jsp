<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
				<div class="topP row">
				
			<div class="col-md-4 col-md-offset-8">
               <div class="choice2">
                  <p>
                     <a href="../english/index.jsp">
                        <img src="../assets/images/english3.gif">
                     </a>
                  </p>
                     
                  <p>
                     <a href="../china/index.jsp">
                        <img src="../assets/images/chiness3.gif">
                     </a>
                  </p>
                   <p>
                     <a href="../china/index.jsp">
                        <img src="../assets/images/chiness3.gif">
                     </a>
                  </p>
               
               </div>
            </div>
					<div class="col-md-6">
						<div class="col-md-3 no-padding">
							<div class="nav-logo">
								<a href="index.jsp">
									<img src="../assets/images/logo.png">
								</a>							
							</div>

						</div>
						<div class="col-md-9 no-padding">
							<div class="logo-content">
								<p class="nav-logotitle">Lime Maintenance & Repair Site</p>
							</div>
						</div>
						<div class="col-md-2"></div>
					</div>
					<div class="col-md-6">
							<div class="nav-logotitle-right">
		<%
			if(session.getAttribute("id")==null){
		%>

								<div class="col-md-3">
									<a href="index.jsp" class="nav-title">홈</a>
								</div>
								<div class="col-md-3">
									<a href="" class="nav-title" onclick="nologin()">고객문의</a>
								</div>
								<div class="col-md-3">
									<a href="Lime-Edu_nd.jsp" class="nav-title">교육안내</a>
								</div>
		<%
		}else{
			if(session.getAttribute("type").equals("user") || session.getAttribute("type").equals("wait")){  
		%>
								<div class="col-md-3">
									<a href="index.jsp" class="nav-title">홈</a>
								</div>
								<div class="col-md-3">
									<a href="Lime_list.jsp" class="nav-title">고객문의</a>
								</div>
								<div class="col-md-3">
									<a href="Lime-Edu_nd.jsp" class="nav-title">교육안내</a>
								</div>
		
		<%		
			}else if (session.getAttribute("type").equals("admin")){
				 %>		
								<div class="col-md-3">
									<a href="admin_list.jsp" class="nav-title">문의답변</a>
								</div>
								<div class="col-md-3">
									<a href="join_accept.jsp" class="nav-title">회원관리</a>
								</div>
								<div class="col-md-3">
									<a href="admin_translation.jsp" class="nav-title">언어번역</a>
								</div>
		<% 
			}
		}
 		%>
								<div class="col-md-3">
									<a href="Lime-notice_nd.jsp" class="nav-title">고객센터</a>
								</div>
							</div>
					</div>
						<!-- TRIM 생성  -->
					</div>
				<script>
					function nologin(){
						alert("로그인을 하신 후 사용할 수 있습니다.");
						location.href="index.jsp";
					}
				</script>
