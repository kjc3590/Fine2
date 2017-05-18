<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.guestbook.dao.*" %> 
<%@ page import="kr.guestbook.domain.*" %> 
<%@ page import="java.io.IOException"%>
	<%
		String id = request.getParameter("id");
		String userpw = request.getParameter("pw");
		
		LimeDao dao = LimeDao.getInstance();
		
		try{
		Lime login = dao.Login(id);
		
		String c_name = login.getCompany_name();
		String name = login.getMember_name();
		String type = login.getMember_type();
		String country = login.getCountry();
		
		System.out.println(type);
		
		boolean loginCheck = false;
		
		if(login != null){
			loginCheck = login.isCheckedPasswd(userpw);
		}
		if(type.equals("wait")){
		   	if(country.equals("korea")){
				response.getWriter().print("<script>alert('회원승인 대기중입니다.')</script>");
				response.getWriter().print("<script>location.href='../"+country+"/index.jsp'</script>");
			}else if(country.equals("china")){
				response.getWriter().print("<script>alert('會員正在等待批准.')</script>");
				response.getWriter().print("<script>location.href='../"+country+"/index.jsp'</script>");
			}else if(country.equals("english")){
				response.getWriter().print("<script>alert('Awaiting Member Approval.')</script>");
				response.getWriter().print("<script>location.href='../"+country+"/index.jsp'</script>");
			}
		}else if(loginCheck){
			session.setAttribute("id", id);
			System.out.println(session.getAttribute("id"));
			session.setAttribute("c_name", c_name);
			session.setAttribute("name", name);
			session.setAttribute("type", type);
			session.setAttribute("country", country);
			response.sendRedirect("../"+country+"/index.jsp");
		}else{
		   	if(country.equals("korea")){
				response.getWriter().print("<script>alert('아이디 또는 비밀번호가 틀립니다.')</script>");
				response.getWriter().print("<script>location.href='../"+country+"/index.jsp'</script>");
			}else if(country.equals("china")){
				response.getWriter().print("<script>alert('用戶名或密碼不正確.')</script>");
				response.getWriter().print("<script>location.href='../"+country+"/index.jsp'</script>");
			}else if(country.equals("english")){
				response.getWriter().print("<script>alert('Incorrect ID or password.')</script>");
				response.getWriter().print("<script>location.href='../"+country+"/index.jsp'</script>");
			}
		}
		}catch(Exception e){
			%>
			<script>
				 alert('아이디가 존재하지 않습니다.');
			 		history.go(-1);
			</script>
		<%	
			e.printStackTrace();
		}
	%>