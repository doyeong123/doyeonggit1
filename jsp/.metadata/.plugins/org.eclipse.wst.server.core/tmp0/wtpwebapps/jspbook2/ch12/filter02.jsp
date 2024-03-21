<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 	form 태그 작성 /이동할 페이지 action 작성, 웹브라우저에서 웹 서버로 보내는 방법 method로 설정 -->
	<form action="filter02_process.jsp" method="post">
		<!-- input 박스 생성 name 값 id 지정 -->
		<p> id : <input type="text" name="id">
		<!-- name value passwd 지정 -->
		<p> passwd : <input type="text" name="passwd">
		
		<br>
		<!-- submit 전송 버튼 누르면 action을 취한다. -->
		<input type=submit value="전송">
	</form>
</body>
</html>