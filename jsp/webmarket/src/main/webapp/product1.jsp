<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.product" %>
<%@ page import="dao.productrepository" %>
<jsp:useBean id = "productDAO" class="dao.productrepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="EUC-KR">
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		productrepository dao = productrepository.getInstance();
		product product = dao.getProductById(id);
		//String save = request.getServletContext().getRealPath("./resources/images");
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				
				<img src="./resources/images/<%=product.getFilename() %>"
				style="width:100%">
			</div>
			<div class="col-md-6">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %>
				<p> <b>상품 코드 : </b><span class="badge badge-danger">
					<%=product.getProductId()%></span>
					<p> <b>제조사</b> : <%=product.getManufacturer() %>
					<p> <b>분류</b> : <%=product.getCategory() %>
					<p> <b>재고 수</b> : <%=product.getUnitsInStock() %>
					<h4><%=product.getUnitprice() %>원</h4>
					<p> <a href="#" class="btn btn-info"> 상품 주문 &raquo;</a>
					<a href="./products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>