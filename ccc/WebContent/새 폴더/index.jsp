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


   <div class="divider"></div>
	<div id="wrap">
   <div class="container" id="container">
   <%@ include file="/include/header.jsp"%>
      <div class="introduction-subtitle">
         <p class="main-sub">
            ianbest Design | <strong class="al">Medical Interior</strong>
         </p>
      </div>
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
               <img src="assets/images/01.jpg" alt="...">
               <div class="carousel-caption"><p class="text">실내인테리어</p></div>
            </div>
            <div class="item">
              <img src="assets/images/02.jpg" alt="...">
               <div class="carousel-caption"><p class="text">리모델링</p></div>
            </div>
            <div class="item">
               <img src="assets/images/03.jpg" alt="...">
               <div class="carousel-caption"><p class="text">메디컬빌드</p></div>
            </div>
             <div class="item">
               <img src="assets/images/04.jpg" alt="...">
               <div class="carousel-caption"><p class="text">오피스뷰어</p></div>
            </div>
             <div class="item">
               <img src="assets/images/05.jpg" alt="...">
               <div class="carousel-caption"><p class="text">안톤의대모험</p></div>
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
   <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
   <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
   <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->


   <%@ include file="/include/footer.jsp"%>
   </div>

</body>

</html>