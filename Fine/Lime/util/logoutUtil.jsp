<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.removeAttribute("id");
String country = (String)session.getAttribute("country");
if(country.equals("korea")){
	response.getWriter().print("<script>alert('로그아웃이 완료되었습니다..')</script>");
	response.getWriter().print("<script>location.href='../"+country+"/index.jsp'</script>");
}else if(country.equals("china")){
	response.getWriter().print("<script>alert('退出完成.')</script>");
	response.getWriter().print("<script>location.href='../"+country+"/index.jsp'</script>");
}else if(country.equals("english")){
	response.getWriter().print("<script>alert('Logout.')</script>");
	response.getWriter().print("<script>location.href='../"+country+"/index.jsp'</script>");
}

%>
