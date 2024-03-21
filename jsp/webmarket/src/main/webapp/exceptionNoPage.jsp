<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>페이지 오류</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h1>
		</div>
	</div>
	<div class="container">
		<p><%=request.getRequestURL() %></p>
		<p> <a href="products.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
	</div>
</body>
</html>