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

<title>회원가입</title>

<link href="../assets/css/bootstrap.min.css" rel="stylesheet">
<link href="../assets/css/style1.css" rel="stylesheet">
<link href="../assets/css/bootstrap-theme.min.css" rel="stylesheet">
<link href="../vendors/material-icons/material-design-iconic-font.min.css"  rel="stylesheet">

<script src="../assets/js/jquery-3.1.1.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>

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
         <%@ include file="../include/header3.jsp"%>
         <div class="card-header">
            <h3 style="text-align: center;">MEMBER JOIN</h3>

         </div>

         <div class="card-body">
            <div class="col-md-12">
               <form class="form-horizontal" action="../util/joinUtil.jsp" method="post">

                  <div class="form-group">
                     <label for="id" class="col-sm-2 col-sm-offset-1 control-label">ID</label>
                     <div class="col-sm-8">
                        <input type="text" class="form-control" id="Id" placeholder="Id" name="id">
                     </div>
                  </div>

                  <div class="form-group">
                     <label for="inputPassword3"
                        class="col-sm-2 col-sm-offset-1 control-label">PASSWD</label>
                     <div class="col-sm-8">
                        <input type="password" class="form-control" id="pw" name="pw"
                           placeholder="PASSWD">
                     </div>
                  </div>

                  <div class="form-group">
                     <label for="name" class="col-sm-2 col-sm-offset-1 control-label">NAME</label>
                     <div class="col-sm-8">
                        <input type="text" class="form-control" id="name" placeholder="NAME" name="name">
                     </div>
                  </div>

                  <div class="form-group">
                     <label for="COMPANY NAME" class="col-sm-2 col-sm-offset-1 control-label">COMPANY NAME</label>

                     <div class="col-sm-8">
						<div class="form_group">
							<div class="fg-line">
								<div class="form-control">
									<select id="" class="chang form-control" name="c_name">
										<option value="" >COMPANY NAME</option>
									<%
										for(Lime company : companyList){
									%>
										<option value="<%=company.getCompany_name()%>"><%=company.getCompany_name() %></option>
									<%
										}
									%>
									</select>
								</div>
							</div>
						</div>
                     </div>
                  </div>

                  <div class="form-group">
                     <label for="inputEmail3"
                        class="col-sm-2 col-sm-offset-1 control-label">CELLPHONE NUMBER</label>
                     <div class="col-sm-8">
                        <input type="text" class="form-control" id="phonetel" name = "phonetel"
                           placeholder="CELLPHONE NUMBER">
                     </div>
                  </div>

                  <div class="form-group">
                     <label for="inputEmail3"
                        class="col-sm-2 col-sm-offset-1 control-label">DIRECT NUMBER</label>
                     <div class="col-sm-8">
                        <input type="text" class="form-control" id="tel" name = "tel"
                           placeholder="DIRECT NUMBER">
                     </div>
                  </div>
                  <div class="form-group">
                     <label for="이메일" class="col-sm-2 col-sm-offset-1 control-label">E-MAIL</label>
                     <div class="col-sm-8">
                        <input type="text" class="form-control" id="email" name ="email"
                           placeholder="E-MAIL">
                     </div>
                  </div>
               <input type="hidden" class="form-control" id="country" name ="country" value="english">

               <div class="icc">
                  <span class="input-content">PLEASE CONTACT FINEINSIGHT BEFORE
								MEMBER JOIN. WE'll GIVE YOU PERMISSION TO USE IT. <br>
							<br>02-565-2920()
                  </span>
               </div>
               <div class="haha col-md-12">
                     <button class="btn-save sizeA" type="submit">MEMBER JOIN</button>
                     <button class="btn-no sizeB" type="button" onclick="location.href='../english/index.jsp' ">CANCEL</button>
               </div>

               </form>
            </div>
         </div>
      </div>
      <%@ include file="../include/footer3.jsp"%>
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