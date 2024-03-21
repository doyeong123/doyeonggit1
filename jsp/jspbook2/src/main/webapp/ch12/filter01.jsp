<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- form 작성. 해당 값을 action으로 갈때 request 객체에 넣어두고 간다. -->
	<!-- method를 post방식으로 웹브라우저에서 웹서버로 전달 -->
	<form action="filter01_process.jsp" method="post">
		<!-- name 값 text type으로 입력 -->
		<p> 이름 : <input type="text" name="name">
		<!-- submit 방식으로 전송 버튼 누를 때 이동 -->
		<!--  -->
		<input type=submit value="전송">
	</form>
</body>
</html>