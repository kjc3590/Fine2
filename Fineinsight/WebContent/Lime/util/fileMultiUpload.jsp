<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.io.File"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.util.Enumeration"%>
<%@ page import="java.io.*"%>
<%@ page import="kr.guestbook.dao.PortDao" %> 
<%@ page import="kr.guestbook.domain.*" %> 
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약처리- 파일업로드중</title>
</head>
<body>

	<%
	//DB 변수 선언 ----------------------------------------------------
	int endRow = 0;
	Port port = new Port();
	PortDao dao = PortDao.getInstance();
	endRow = dao.endRowSrc();
	//--------------------------------------------------------------
	//업로드 변수 -----------------------------------------------------
		String realFolder = ""; //upload의 절대 경로
		String encType = "utf-8"; //인코딩 타입
		String saveFolder = ""; //파일업로드 상대경로
		int maxSize = 20 * 1024 * 1024; //최대 업로드 파일 크기(20MB)
		int i = 1;
		ServletContext context = getServletContext();
		//추후 서버 업로드 폴더로 path 변경
		String path = "D:/Tool/workspace/test_dbO/WebContent/assets/images/portfolio1";
	//업로드 변수 -----------------------------------------------------
			int path2 = endRow+1;
			saveFolder = "/images"+path2;
			port.setSrc(path2);
				
	 	    File dir = new File(path, saveFolder);
			if(!dir.exists()){
				dir.mkdir();
			} 
			realFolder = path+saveFolder;
     			
		try {
			MultipartRequest multi = new MultipartRequest(request, realFolder, //upload 절대경로
				maxSize, //최대 업로드 사이즈
				encType, //인코딩 처리
				new DefaultFileRenamePolicy()); //이름 겹치면 이름 바꿔줌
					
				//복수의 파일 정보 처리
				//서버에 전송된 파일의 파라미터 name을 구함
				
				String newFileName = "";
 				Enumeration<?> files = multi.getFileNames();
 			
				String b_name = multi.getParameter("b_name");
				port.setName(b_name);
				String Column1 = multi.getParameter("Column1");
				port.setColumn1(Column1);
				dao.insertPort(port);
				
 	 				while(files.hasMoreElements()) {
 	 					if(i>11){
 	 						break;
 	 					}
						//전송전 원래의 파일 이름
						String original = multi.getOriginalFileName("img"+i);
						//전송된 파일의 컨텐트 타입
						String type = multi.getContentType("img"+i);
						
						String fullFileName = realFolder + "/" + original;
						newFileName = "img"+i+".jpg";

						File file = new File(fullFileName);
					          File newFile = new File(realFolder + "/" + newFileName);
					          file.renameTo(newFile);   // rename...
								i++;
					}
 	 				%>
 	 						<script>
			alert('예약완료');
			location.href="../portAdd.jsp";
		</script>
		<%
 			
		} catch (IOException e) {
			e.printStackTrace();
			out.print("오류다오류");
		} catch (Exception e) {
			e.printStackTrace();
			out.print("오류다오류");
		}
	%>
	</body>
	</html>