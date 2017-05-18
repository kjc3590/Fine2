<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.guestbook.dao.*" %> 
<%@ page import="kr.guestbook.domain.*" %> 
<%@ page import="java.io.IOException" %>

<%
	request.setCharacterEncoding("UTF-8");

	LimeDao dao = LimeDao.getInstance();
	Lime lime = new Lime();
	String country = (String)session.getAttribute("country");
	
	try{
		String reply_idS = request.getParameter("reply_id");
		int reply_id = Integer.parseInt(reply_idS);
		String member_id = (String)session.getAttribute("id");
		String member_name = (String)session.getAttribute("name");
		String manager = request.getParameter("manager");
		String keyword = request.getParameter("keyword");
		String question_progress = request.getParameter("question_progress");
		String question_division = request.getParameter("division");
		String reply_priority = request.getParameter("reply_priority");
		String reply_method = request.getParameter("reply_method");
		String detailDivision = request.getParameter("detailDivision");
		String reply_term = request.getParameter("term");
		String reply_day = request.getParameter("reply_day");
		String reply_content = request.getParameter("reply_content");
		String progress_ago = request.getParameter("progress_ago");
		
		System.out.println("------------------------------------------------");
		
		System.out.println(question_progress);
		System.out.println(question_division);
		
		System.out.println("------------------------------------------------");
		
 		lime.setMember_id(member_id);
 		lime.setMember_name(member_name);
		lime.setReply_id(reply_id);
 		lime.setQuestion_manager(manager);
		lime.setReply_keyword(keyword);
		lime.setQuestion_progress(question_progress);
		lime.setQuestion_division(question_division);
		lime.setReply_priority(reply_priority);
		lime.setReply_method(reply_method);
		lime.setDetailDivision(detailDivision);
		lime.setReply_term(reply_term);
		lime.setReply_day(reply_day);
		lime.setReply_content(reply_content);	
		lime.setprogress_ago(progress_ago);
		lime.setCountry(country);
		
		dao.work_update(lime);
			if(country.equals("korea")){
				response.getWriter().print("<script>alert('수정완료')</script>");
			response.getWriter().print("<script>location.href='../"+country+"/admin_list.jsp'</script>");
			}else if(country.equals("china")){
				response.getWriter().print("<script>alert('修整完成.')</script>");
			response.getWriter().print("<script>location.href='../"+country+"/admin_list.jsp'</script>");
			}else if(country.equals("english")){
				response.getWriter().print("<script>alert('Modify Complete.')</script>");
			response.getWriter().print("<script>location.href='../"+country+"/admin_list.jsp'</script>");
			}	
		}catch(Exception e){
		if(country.equals("korea")){
			response.getWriter().print("<script>alert('필수항목을 입력해주세요')</script>");
		}else if(country.equals("china")){
			response.getWriter().print("<script>alert('请输入必需项目')</script>");
		}else if(country.equals("english")){
			response.getWriter().print("<script>alert('Enter essential item.')</script>");
		}
		response.getWriter().print("<script>location.href='../"+country+"/admin_list.jsp'</script>");

		e.printStackTrace();
	}
	
%>