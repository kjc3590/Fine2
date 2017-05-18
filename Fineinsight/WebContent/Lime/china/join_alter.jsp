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

<title>会员信息修改</title>

<link href="../assets/css/bootstrap.min.css" rel="stylesheet">
<link href="../assets/css/style.css" rel="stylesheet">
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
         <%@ include file="../include/header2.jsp"%>
         <div class="card-header">
            <h3 style="text-align: center;">会员信息修改</h3>
         </div>

         <div class="card-body">
            <div class="col-md-12">
               <form class="form-horizontal" action="../util/joinUtil.jsp">

                  <div class="form-group">
                     <label for="name" class="col-sm-2 col-sm-offset-1 control-label">名字</label>
                     <div class="col-sm-8">
                        <input type="text" class="form-control" id="name" placeholder="名字" name="name">
                     </div>
                  </div>

                  <div class="form-group">
                     <label for="企业名称" class="col-sm-2 col-sm-offset-1 control-label">企业名称</label>

                     <div class="col-sm-8">
						<div class="form_group">
							<div class="fg-line">
								<div class="form-control">
									<select id="" class="chang form-control" name="c_name">
										<option value="" >企业名称</option>
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
                        class="col-sm-2 col-sm-offset-1 control-label">手机号码</label>
                     <div class="col-sm-8">
                        <input type="text" class="form-control" id="phonetel" name = "phonetel"
                           placeholder="手机号码">
                     </div>
                  </div>

                  <div class="form-group">
                     <label for="inputEmail3"
                        class="col-sm-2 col-sm-offset-1 control-label">内线号码</label>
                     <div class="col-sm-8">
                        <input type="text" class="form-control" id="tel" name = "tel"
                           placeholder="内线号码">
                     </div>
                  </div>
                  <div class="form-group">
                     <label for="电子邮件" class="col-sm-2 col-sm-offset-1 control-label">电子邮件</label>
                     <div class="col-sm-8">
                        <input type="text" class="form-control" id="email" name ="email"
                           placeholder="电子邮件">
                     </div>
                  </div>

               <div class="icc">
                  <span class="input-content">加入前一定要请联系ooo。通过负责人使用许可. 02-565-2920()
                  </span>
               </div>
               <div class="haha col-md-12">
                     <button class="btn-save sizeA" type="submit">注册会员</button>
                     <button class="btn-no sizeB" type="button" onclick="location.href='index.jsp' ">取消</button>
               </div>

               </form>
            </div>
         </div>
      </div>
      <%@ include file="../include/footer2.jsp"%>
   </div>
   </section>

</body>
</html>