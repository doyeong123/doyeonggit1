<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkLogin()
	{
		var form = document.loginForm;
		var length1 = form.id.value.length;
		
		if(length1<4 || length1>12)
		{
			alert("아이디는 4~12자 이내로 입력 가능합니다!")
			form.id.select();
			return;			
		}
		
		var length2 = form.passwd.value.length;
		
		if(length2<4)
		{
			alert("비밀번호는 4자 이상으로 입력해야 됩니다!")
			form.passwd.select();
			return;			
		}
		
		form.submit();
		
	}
</script>
<body>
	<form name="loginForm" action="vaildation03_process.jsp" method="post">
		<P> 아이디 : <input type="text" name="id">
		<P> 비밀번호 : <input type="password" name="passwd">
		<p><input type="button" value="전송" onclick="checkLogin()">		
	</form>
</body>
</html>