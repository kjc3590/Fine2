<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="kr.guestbook.dao.*" %> 
<%@ page import="kr.guestbook.domain.*" %> 

<!-- 파일업로드 및 예약정보 DB--------------------------------------------------------------------------------------  -->
<%
	/* 파일 업로드 할때는 절대경로로 넣어주어야 함 */
	String realFolder = "";		//웹어플리케이션상의 절대경로
	LimeDao dao = LimeDao.getInstance();
	Lime lime = new Lime();
	String country = (String)session.getAttribute("country");
	
	//파일 업로드 경로(upload란 이름의 폴더 만들어 놓기)
	//현재 상대경로임
	String saveFolder = "/upload";
	//인코딩 타입
	String encType = "utf-8";
	//최대 업로드 사이즈 지정(5MB)
	int maxSize = 5*1024*1024;
	
	ServletContext context = getServletContext();
	//현재 upload 페이지의 웹어플리케이션상의 절대경로 구함
	realFolder = context.getRealPath(saveFolder);

	try {
		MultipartRequest multi = new MultipartRequest(request,
													realFolder,	//upload 절대경로
													maxSize,	//최대 업로드 사이즈
													encType,	//인코딩 처리
													new DefaultFileRenamePolicy());	//이름 겹치면 이름 바꿔줌
		String id  = (String)session.getAttribute("id");
		String company_name = multi.getParameter("company_name");
		String tel = multi.getParameter("tel");
		String q_idS = multi.getParameter("q_id");
		int q_id = Integer.parseInt(q_idS);
		String member_name = multi.getParameter("member_name");
		String ptel = multi.getParameter("ptel");
		String email = multi.getParameter("email");
		String division = multi.getParameter("division");
		String content = multi.getParameter("content");
		String manager = null;

		String q_attach = multi.getParameter("q_attach");
		String q_filename = multi.getParameter("q_filename");
		
		//파일 정보 처리
		//서버에 저장된 파일명 구하기
		String path = null;
		String filename =null;
		
		if(multi.getFilesystemName("uploadFile")==null){
			path = q_attach;
			filename = q_filename;
		}else{
			filename = multi.getFilesystemName("uploadFile");
			path = "/upload" +"/"+ filename;
		}
		
		
		lime.setMember_id(id);
		lime.setCompany_name(company_name);
		lime.setMember_tel(tel);
		lime.setMember_name(member_name);
		lime.setMember_ptel(ptel);
		lime.setMember_email(email);
		lime.setQuestion_division(division);
		lime.setQuestion_id(q_id);
		lime.setQuestion_content(content);
		lime.setQuestion_filename(filename);
		lime.setQuestion_attach(path);
		lime.setQuestion_manager(manager);
		
		dao.question_update(lime);
		if(country.equals("korea")){
			response.getWriter().print("<script>alert('수정완료')</script>");
		response.getWriter().print("<script>location.href='../"+country+"/Lime_list.jsp'</script>");
		}else if(country.equals("china")){
			response.getWriter().print("<script>alert('修整完成.')</script>");
		response.getWriter().print("<script>location.href='../"+country+"/Lime_list.jsp'</script>");
		}else if(country.equals("english")){
			response.getWriter().print("<script>alert('Modify Complete.')</script>");
		response.getWriter().print("<script>location.href='../"+country+"/Lime_list.jsp'</script>");
		}
		

	}catch(IOException e) {
		if(country.equals("korea")){
			response.getWriter().print("<script>alert('접수실패')</script>");
		response.getWriter().print("<script>location.href='../"+country+"/Lime_list.jsp'</script>");
		}else if(country.equals("china")){
			response.getWriter().print("<script>alert('接受失败')</script>");
		response.getWriter().print("<script>location.href='../"+country+"/Lime_list.jsp'</script>");
		}else if(country.equals("english")){
			response.getWriter().print("<script>alert('Failed reception.')</script>");
		response.getWriter().print("<script>location.href='../"+country+"/Lime_list.jsp'</script>");
		}
		e.printStackTrace();
	} catch(Exception e) {
		if(country.equals("korea")){
			response.getWriter().print("<script>alert('접수실패')</script>");
		response.getWriter().print("<script>location.href='../"+country+"/Lime_list.jsp'</script>");
		}else if(country.equals("china")){
			response.getWriter().print("<script>alert('接受失败')</script>");
		response.getWriter().print("<script>location.href='../"+country+"/Lime_list.jsp'</script>");
		}else if(country.equals("english")){
			response.getWriter().print("<script>alert('Failed reception.')</script>");
		response.getWriter().print("<script>location.href='../"+country+"/Lime_list.jsp'</script>");
		}
		e.printStackTrace();
	}
		%>