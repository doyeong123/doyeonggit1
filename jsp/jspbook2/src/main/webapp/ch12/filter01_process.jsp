<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- mapping 설정된 jsp 페이지. -->
	<%
		/* request에 담긴 name값의 value를 name에 할당. */
		String name = request.getParameter("name");
	%>
	<!-- 해당 값을 출력.  -->
	<!-- null값 || 공백일 경우 web.xml에 설정된 필터를 통해 java AuthenFilter.java의 -->
	<!-- 제어문 if 작동.  -->
	<p> 입력된 결과 값 : <%=name%>
</body>
</html>