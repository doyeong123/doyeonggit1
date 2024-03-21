<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.product" %>
<%@ page import="dao.productrepository" %>
<!-- 
<jsp:useBean id="productDAO" class="dao.productrepository" scope="session"/> 객체 생성을 두번이나 하잖아 멍청아 지워야지-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<%--
		ArrayList<product> listOfProducts = productDAO.getAllProducts();
		arraylist 생성하는 방법 바꿔잖아 밑에껄로 근데 왜 삭제를 안해 멍청아
	--%>
	<%
		productrepository dao = productrepository.getInstance();
		ArrayList<product> listOfproducts = dao.getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center">
			<%
				for(int i=0; i<listOfproducts.size(); i++){
					product product = listOfproducts.get(i);
					//String save = request.getServletContext().getRealPath("./resources/images");
			%>
	
			<div class="col-md-4">
				<img src="./resources/images/<%=product.getFilename() %>" 
				style="width:100%">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %>
				<p><%=product.getUnitprice() %>원
				<p> <a href="./product.jsp?id=<%=product.getProductId() %>"
				class="btn btn-secondary" role="button" >상세 정보 &raquo;</a>
			</div>
			
			<%
				}
			%>
		</div>
		<hr>
	</div>

	<jsp:include page="footer.jsp"/>
</body>
</html>