<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.guestbook.dao.*"%>
<%@ page import="kr.guestbook.domain.*"%>
<%
	String id = request.getParameter("id");
	LimeDao dao = LimeDao.getInstance();
	dao.join_accept(id);
	String country = (String)session.getAttribute("country");
	if(country.equals("korea")){
		response.getWriter().print("<script>alert('승인완료.')</script>");
	}else if(country.equals("china")){
		response.getWriter().print("<script>alert('许可完成.')</script>");
	}else if(country.equals("english")){
		response.getWriter().print("<script>alert('APPROVAL SUCCESS.')</script>");
	}
	response.getWriter().print("<script>location.href='../"+country+"/join_accept.jsp'</script>");

%>
