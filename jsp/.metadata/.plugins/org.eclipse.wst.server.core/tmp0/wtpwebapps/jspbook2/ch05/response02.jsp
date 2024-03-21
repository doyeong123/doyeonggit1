<%@page import="javax.security.auth.Refreshable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>이 페이지는 5초마다 새로고침이 됩니다.
	<%
		//setIntHeader = 설정한 헤더 이름 name에 정수 값 value를 설정.
		//Refresh를 5초에 한번씩 실행하도록 설정.
		response.setIntHeader("Refresh", 5);
	%>
</body>
</html>