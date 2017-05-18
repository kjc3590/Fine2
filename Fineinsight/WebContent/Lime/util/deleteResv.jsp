<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.guestbook.dao.PortDao" %> 
<%@ page import="kr.guestbook.domain.*" %> 
<%@ page import="java.util.List" %> 
    <%

	PortDao dao = PortDao.getInstance();
    
    String resvid = null;
	resvid = request.getParameter("resv_id");
	String[] resvid2 = null;
	resvid2 = request.getParameterValues("chk");
	
	try{
		if(resvid==null){
		    for(int i=0;i<resvid2.length;i++){
				int resv_id = Integer.parseInt(resvid2[i]);
				dao.deleteResv(resv_id);
		    }
		}else {
			int resv_id = Integer.parseInt(resvid);
			dao.deleteResv(resv_id);
		}
		
	    
		response.sendRedirect("../list2.jsp");
	}catch(Exception e){
		%>
		
		<script>
		alert('삭제 실패');
			location.href="../list2.jsp";
		</script>
	<%	
	}
    %>