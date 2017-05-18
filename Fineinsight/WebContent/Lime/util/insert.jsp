<%@page import="kr.guestbook.domain.Lime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.guestbook.dao.*" %> 
<%@ page import="kr.guestbook.domain.Port" %> 
<%@ page import="java.util.List" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%
int cnt = 0;
	request.setCharacterEncoding("utf-8");
	Lime lime = new Lime();	
	LimeDao dao = LimeDao.getInstance();
	//자동 포트폴리오 추가.
/*  	dao.insert();
/* */ 	//자동 예약
while(cnt<20){
    dao.resvAuto(lime);
	dao.work_resv();
	cnt++;
}
%>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>성공!</h3>

</body>
</html>