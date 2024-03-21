<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.oreilly.servlet.*" %>
    <%@ page import="com.oreilly.servlet.multipart.*" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.io.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		/* img 디렉토리에 대한 실제 파일 경로를 찾고, 그 경로를 문자열로 출력해  */
		/* 그 경로를 save에 저장한다. */
		String save = request.getServletContext().getRealPath("/img");
		System.out.println(save);
		MultipartRequest multi = new MultipartRequest(request, 
				/* 해당 경로를 save로 저장. */
				save,
				/* 파일 최대 크기 */
				5*1024*1024,
				/* 인코딩 유형 설정 */
				"utf-8",
				/* policy 설정 */
				new DefaultFileRenamePolicy());
		/* 자동 */
		/* MR에서 getNames 한 것들을 params에 담는다(keys) */
		Enumeration params = multi.getParameterNames();
		
		/* while문을 통해 keys 받아 넣기 */
		/* hasMoreElements() - 해당 다음 값의 유무의 판단 */
		/* hasElement() - 다음의 값을 반환시킨다. */
		while(params.hasMoreElements())
		{
			String name = (String) params.nextElement();
			String value = multi.getParameter(name);
			out.println(name+" = "+value+"<br>");
		}
		
		out.println("--------------------------<br>"); 
		
		/* MR에서 getNames 한 것들을 params에 담는다(keys) */
		Enumeration files = multi.getFileNames();
		
  		while(files.hasMoreElements())
		{
			String name = (String) files.nextElement();
			/* 저장 후 이름  */
			String filename =  multi.getFilesystemName(name);
			/* 저장 전 이름 */
			String original = multi.getOriginalFileName(name);
			String type =  multi.getContentType(name);
			File file = multi.getFile(name);
			
			out.println("요청 파라미터 이름 : " + name + "<br>");
			out.println("실제 파일 이름  : " + original + "<br>");
			out.println("저장 파일 이름 : " + filename + "<br>");
			out.println("파일 콘텐츠 유형 : " + type + "<br>");
			out.println("<img src=../img/" + filename + ">"); 
			
			if(file != null)
			{
				/* 파일의 length()는 해당 파일의 크기나 size를 반환해준다. */
				out.println(" 파일 크기 : " + file.length());
				out.println("<br>");
			}
		} 
		/* response.sendRedirect("out.html"); */
	%>
</body>
</html>