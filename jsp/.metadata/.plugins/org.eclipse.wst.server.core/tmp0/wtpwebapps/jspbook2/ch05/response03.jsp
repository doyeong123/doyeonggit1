<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//웹 브라우저에 응답할 오류를 설정하는데, 현재 오류의 상태 타입과,
		//해당 메세지 출력을 설정합니다.
		response.sendError(405,"요청 페이지를 찾을 수가 없습니다.");
	%>
</body>
</html>