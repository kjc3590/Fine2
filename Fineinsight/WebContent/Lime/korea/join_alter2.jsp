<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="kr.guestbook.dao.*"%>
<%@ page import="kr.guestbook.domain.*"%>
<%@ page import="java.util.List"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>회원정보수정</title>

<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
<link href="assets/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="vendors/material-icons/material-design-iconic-font.min.css"  rel="stylesheet">

<script src="assets/js/jquery-3.1.1.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<%
List<Lime> companyList = null;
Lime lime = new Lime();
LimeDao dao = LimeDao.getInstance();

companyList = dao.CompanyList();
%>
</head>
<body>
   <section id="content">
   <div class="container">

      <div class="card">
         <%@ include file="../include/header.jsp"%>
         <div class="card-header">
            <h3 style="text-align: center;">회원정보수정</h3>
         </div>

         <div class="card-body">
            <div class="col-md-12">
               <form class="form-horizontal" action="../util/joinUtil.jsp" style="padding : 150px; padding-bottom: 372px;'">

                  <div class="form-group">
                     <label for="name" class="col-sm-2 col-sm-offset-1 control-label">비밀번호 입력</label>
                     <div class="col-sm-8">
                        <input type="password" class="form-control" id="password" placeholder="비밀번호 입력" name="password">
                     </div>
                  </div>
                  
               <div class="haha col-md-12">
                     <button class="btn btn-save sizeA" type="submit">확인</button>
                     <button class="btn btn-no sizeB" type="button" onclick="location.href='index.jsp' ">취소</button>
               </div>

               </form>
            </div>
         </div>
      </div>
      <%@ include file="../include/footer.jsp"%>
   </div>
   </section>
<!--    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
   <script>
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
/*                 document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
 */                document.getElementById('address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('address2').focus();
            }
        }).open();
    }
   </script> -->
</body>
</html>