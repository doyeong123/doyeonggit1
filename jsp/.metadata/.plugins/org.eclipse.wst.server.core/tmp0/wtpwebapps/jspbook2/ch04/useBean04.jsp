<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person" class="jspbook2.Person" scope="request"/>
	<%
		person.setId(1234567);
		person.setName("홍길동");
	%>
	<p> 아이디 : <%=person.getId() %>
	<p> 이 름 : <%=person.getName() %>

	<jsp:include page="useBean03.jsp"/>
</body>
</html>