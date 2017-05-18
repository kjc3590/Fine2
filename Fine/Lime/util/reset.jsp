<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.removeAttribute("keyW");
session.removeAttribute("keyF");
session.removeAttribute("sort2");
String country = (String)session.getAttribute("country");

String what = request.getParameter("what");
	if(what.equals("admin")){
		session.removeAttribute("keyWL");
		session.removeAttribute("keyFL");
		session.removeAttribute("sort2L");
		response.sendRedirect("../"+country+"/admin_list.jsp");
	}else if(what.equals("lime")){
		session.removeAttribute("keyWL");
		session.removeAttribute("keyFL");
		session.removeAttribute("sort2L");
		response.sendRedirect("../"+country+"/Lime_list.jsp");	
	}else if(what.equals("adminT")){
		session.removeAttribute("keyWT");
		session.removeAttribute("keyFT");
		session.removeAttribute("sort2T");
		response.sendRedirect("../"+country+"/admin_translation.jsp");	
	}else if(what.equals("trans")){
		session.removeAttribute("keyWT");
		session.removeAttribute("keyFT");
		session.removeAttribute("sort2T");
		response.sendRedirect("../"+country+"/Lime_translation.jsp");	
	}
%>

