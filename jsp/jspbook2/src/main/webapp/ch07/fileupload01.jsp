<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- form태그에 method를 post로 enctype을 multipart/form-data로 설정 -->
	<form name="fileForm" method="post" enctype="multipart/form-data" 
	action="fileupload01_process.jsp">
		<p> 이 름 : <input type="text" name="name">
		<p> 제 목 : <input type="text" name="subject">
		<!-- type을 file로 하여 파일업로드하게끔 설정  -->
		<p> 파 일 : <input type="file" name="filename">
		<p> <input type="submit" value="파일 올리기">
	</form>
	<!-- submit버튼을 통해 해당 액션페이지로 이동되면서 -->
	<!-- 해당 값들을 request에 넣고 이동을 한다. -->
</body>
</html>