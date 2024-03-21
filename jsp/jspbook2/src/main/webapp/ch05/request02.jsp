<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//모든 헤더의 이름을 가져오면서 en 참조변수에 담는다.
		Enumeration en = request.getHeaderNames();
		//en객체 주소안에 hasMoreElement()메서드가 있을 때까지 반복
		while (en.hasMoreElements())
		{
			//현재의 헤더 이름을 가져오기 위해 en.nextElement()메서드를 작성
			//request에서 반환이 되기 때문에 캐스팅을 해준다.
			String headerName = (String) en.nextElement();
			//설정된 헤더 이름의 값을 가져오도록 request 내장객체 getHeader()메서드를 작성한다.
			String headerValue = request.getHeader(headerName);
		
	%>
	
	<%=headerName %> : <%=headerValue %> <br>
	<%
		}
	%>

</html>