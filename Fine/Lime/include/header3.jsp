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
	<div class="col-md-6 no-padding">
		<div class="col-md-3 no-padding">
			<div class="nav-logo">
				<a href="index.jsp"> <img src="../assets/images/logo.png">
				</a>
			</div>

		</div>
		<div class="col-md-9">
			<div class="logo-content">
				<p class="nav-logotitle">Lime Maintenance & Repair Site</p>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
	<div class="col-md-6 no-padding">
		<div class="nav-logotitle-right">
			<%
			if(session.getAttribute("id")==null){
		%>

			<div class="col-md-3  no-padding">
				<a href="index.jsp" class="nav-title">HOME</a>
			</div>
			<div class="col-md-3  no-padding">
				<a href="" class="nav-title" onclick="nologin()">QUESTION</a>
			</div>
			<div class="col-md-3  no-padding">
				<a href="#" class="nav-title" onclick="shut()">EDUCATION</a>
			</div>
			<%
		}else{
			if(session.getAttribute("type").equals("user") || session.getAttribute("type").equals("wait")){  
		%>
			<div class="col-md-3 no-padding">
				<a href="index.jsp" class="nav-title">HOME</a>
			</div>
			<div class="col-md-3 no-padding">
				<a href="Lime_list.jsp" class="nav-title">QUESTION</a>
			</div>
			<div class="col-md-3 no-padding">
				<a href="#" class="nav-title" onclick="shut()">EDUCATION</a>
			</div>

			<%		
			}else if (session.getAttribute("type").equals("admin")){
				 %>
			<div class="col-md-3 no-padding" style="padding-right: 20px;">
				<a href="index.jsp" class="nav-title">HOME</a>
			</div>
			<div class="col-md-3 no-padding" style="padding-right: 20px;">
				<a href="admin_list.jsp" class="nav-title">ANSWER</a>
			</div>
			<div class="col-md-3 no-padding" style="padding-left: 25px;">
				<a href="Lime_translation.jsp" class="nav-title">TRANSLATION</a>
			</div>
			<% 
			}
		}
 		%>
			<div class="col-md-3  no-padding">
				<a href="#" class="nav-title" onclick="shut()">CUSTOMER</a>
			</div>
		</div>
	</div>
	<!-- TRIM 생성  -->
</div>

<script>
					function nologin(){
						alert("PLEASE LOG IN.");
						location.href="index.jsp";
					}
					
					function shut(){
						alert("In ready.");
						location.href="index.jsp";
					}
				</script>
