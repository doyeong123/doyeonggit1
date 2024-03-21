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
	{	//HTML-form="name"
		var form = document.loginForm;
		if (form.id.value == "")
		{
			alert("아이디를 입력해주세요")
			form.id.focus();
			//false를 보냄으로써 submit 이후로 실행 자체가 되지 않게끔 만든다.
			//따라서 해당 값이 null일 때 alert만 뜨고, submit자체가 안되고, 
			//당연히  action도 안돼서 해당 process.jsp 페이지로 이동도 하지 않는다.
			return false;
		}
		else if(form.passwd.value == "")
		{
			alert("비밀번호를 입력해주세요")
			form.id.focus();
			return false;
		}

	}
</script>
<body>
	<form name="loginForm" action="vaildation02_process.jsp" method="post">
		<p> 아이디 : <input type="text" name="id">
		<p> 비밀번호 : <input type="password" name="passwd"> 
		<!-- onclick될때 해당 함수를 실행.  -->
		<p><input type="button" value="전송" onclick="checkLogin()">
	</form>
</body>
</html>