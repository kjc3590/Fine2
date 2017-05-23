<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/ionicons.min.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/style.css">

<script src="assets/js/jquery-1.9.1.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>


</head>

<body>


  
	<div id="wrap">
	<%@ include file="/include/header.jsp"%>
   <div class="container" id="container">
 
    
      <div id="carousel-example-generic" class="carousel slide"
         data-ride="carousel">
         <!-- Indicators -->
         <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0"
               class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
             <li data-target="#carousel-example-generic" data-slide-to="3"></li>
              <li data-target="#carousel-example-generic" data-slide-to="4"></li>
         
         </ol>
         
         <!-- Wrapper for slides -->
         <div class="carousel-inner" role="listbox">
         	
            <div class="item active">
           <img src="assets/images/유앤미.png" alt="..."><div class="in-content">
           <p style="margin-top:20px;">유앤미 클리닉 청담점<br>YOU & ME HEALTH BEAUTY CLINIC</p>
             <a href="port.jsp"><span class="viewmore">
             VIEW MORE</span></a>
            </div></div>
            <div class="item">
              <img src="assets/images/목뉴방.png" alt="..."><div class="in-content">
           <p style="margin-top:20px;">유앤미 클리닉 청담점<br>YOU & ME HEALTH BEAUTY CLINIC</p>
             <a href="port.jsp"><span class="viewmore">
             VIEW MORE</span></a>
            </div>
              
            </div>
            <div class="item">
               <img src="assets/images/베스티안부산병원.png" alt="..."><div class="in-content">
           <p style="margin-top:20px;">유앤미 클리닉 청담점<br>YOU & ME HEALTH BEAUTY CLINIC</p>
             <a href="port.jsp"><span class="viewmore">
             VIEW MORE</span></a>
            </div>
              
            </div>
             <div class="item">
               <img src="assets/images/목뉴방.png" alt="..."><div class="in-content">
           <p style="margin-top:20px;">유앤미 클리닉 청담점<br>YOU & ME HEALTH BEAUTY CLINIC</p>
             <a href="port.jsp"><span class="viewmore">
             VIEW MORE</span></a>
            </div>
              
            </div>
             <div class="item">
               <img src="assets/images/유앤미.png" alt="..."><div class="in-content">
           <p style="margin-top:20px;">유앤미 클리닉 청담점<br>YOU & ME HEALTH BEAUTY CLINIC</p>
             <a href="port.jsp"><span class="viewmore">
             VIEW MORE</span></a>
            </div>
              
            </div>
         </div>
         <!-- Controls -->
         <a class="left carousel-control" href="#carousel-example-generic"
            role="button" data-slide="prev"> <span
            class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
         </a> <a class="right carousel-control" href="#carousel-example-generic"
            role="button" data-slide="next"> <span
            class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
         </a>
      </div>
      
      
 
   </div>
  <%@ include file="/include/footer.jsp"%>

   </div>

</body>

</html>