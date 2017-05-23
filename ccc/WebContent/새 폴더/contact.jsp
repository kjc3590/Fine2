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
<script src="assets/js/map.js"></script>



</head>

<body>



<div class="divider"></div>
   <div class="container">
   <%@ include file="/include/header.jsp"%>   
   <div class="introduction-subtitle">
      <p class="main-sub">CONTACT US | <strong class="al"> 오시는길</strong></p>   
   </div>
      
   <div class="map-contact">
      <div id="map-canvas"></div>
      
      <div class="map-content">
         <div class="col-md-3 popo">
            <p class="title">주소</p>
            <p class="content">서울시 강남구 언주로 609 팍스타워 B동</p>
             <p class="content">(주)이안베스트</p>
         </div>
         <div class="col-md-3 popo">
            <p class="title">전화번호</p>
            <p class="content">(대) 1670-5116 (직) 070-7603-1011 </p>
            <p class="content">Fax. 02-568-2952 </p>
         </div>
         <div class="col-md-3 popo">
            <p class="title">팩스</p>
            <p class="content">(대) 1670-5116 (직) 070-7603-1011 </p>
            <p class="content">Fax. 02-568-2952 </p>
         </div>
         <div class="col-md-3 popo">
            <p class="title">오시는길</p>
            <p class="content">(대) 1670-5116 (직) 070-7603-1011 </p>
            <p class="content">Fax. 02-568-2952 </p>
         </div>
      </div>
   </div>   
      
   </div>
   <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyB_bNNglsjbbOhArM3uMMLm0Qy4aCTPEu4"></script>
   <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
   <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
   <%@ include file="/include/footer.jsp"%>

</body>

</html>