<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
		<div class="topP row">
			<div class="col-md-4 col-md-offset-8">
               <div class="choice2">
                   <p>
                     <a href="../korea/index.jsp">
                        <img src="../assets/images/korean.png">
                     </a>
                  </p>
                  <p>
                     <a href="../english/index.jsp">
                        <img src="../assets/images/english.png">
                     </a>
                  </p>
                     
                  <p>
                     <a href="../china/index.jsp">
                        <img src="../assets/images/chinese.png">
                     </a>
                  </p>
                   <p>
                     <a href="#">
                        <img src="../assets/images/russian.png">
                     </a>
                  </p>
               
               </div>
            </div>
					<div class="col-md-6">
						<div class="col-md-3">
							<div class="nav-logo">
								<a href="index.jsp">
									<img src="../assets/images/logo.png">
								</a>							
							</div>

						</div>
						<div class="col-md-9">
							<div class="logo-content">
								<p class="nav-logotitle">Lime 维护页面 網站</p>
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
									<a href="index.jsp" class="nav-title">首页</a>
								</div>
								<div class="col-md-3">
									<a href="" class="nav-title" onclick="nologin()">客户咨询</a>
								</div>
								<div class="col-md-3">
									<a href="#" class="nav-title" onclick="shut()">教育指南</a>
								</div>
		<%
		}else{
			if(session.getAttribute("type").equals("user") || session.getAttribute("type").equals("wait")){  
		%>
								<div class="col-md-3">
									<a href="index.jsp" class="nav-title">首页</a>
								</div>
								<div class="col-md-3">
									<a href="Lime_list.jsp" class="nav-title">客户咨询</a>
								</div>
								<div class="col-md-3">
									<a href="#" class="nav-title" onclick="shut()">教育指南</a>
								</div>
		
		<%		
			}else if (session.getAttribute("type").equals("admin")){
				 %>		
				 				<div class="col-md-3">
									<a href="index.jsp" class="nav-title">首页</a>
								</div>
								
								<div class="col-md-3">
									<a href="admin_list.jsp" class="nav-title">答复</a>
								</div>

								<div class="col-md-3">
									<a href="Lime_translation.jsp" class="nav-title">语言翻译</a>
								</div>
		<% 
			}
		}
 		%>
								<div class="col-md-3">
									<a href="#" class="nav-title" onclick="shut()">客户中心</a>
								</div>
							</div>
					</div>
						<!-- TRIM 생성  -->
					</div>
				<script>
					function nologin(){
						alert("您可以登录后使用.");
						location.href="index.jsp";
					}
					function shut(){
						alert("正在准备.");
						location.href="index.jsp";
					}
				</script>
