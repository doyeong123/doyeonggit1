<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkform()
	{
		//HTML-form 의 name값.input의 name값.value
		alert("아이디 : " +document.loginForm.id.value + "\n"+
				//HTML- form의 name값. input의 name값. value
				"비밀번호 : " + document.loginForm.passwd.value);
	}
</script>
<body>
	<form name="loginForm">
		<input type="text" name="id">
		<input type="password" name="passwd">
		<!-- onclick될 때 해당 함수를 실행.  -->
		<input type="submit" value="전송" onclick="checkform()">
	</form>
</script>
</body>
</html>