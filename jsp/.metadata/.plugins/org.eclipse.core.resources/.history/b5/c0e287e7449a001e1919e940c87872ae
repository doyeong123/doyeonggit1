<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script type="text/javascript" src="./resources/kdy.js"></script>
	 
	<title>Insert title here</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language") %>' />
	<fmt:bundle basename="bundle.message">
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<div class="text-right">
				<a href="?language=ko" >Korean</a>|<a href="?language=en">English</a>
				<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
			</div>
			<form name="newproduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
				<h1 class="display-3"><fmt:message key="title"/></h1>
				<div class="form-group row">
				
					<label class="col-sm-2"><fmt:message key="productId"/></label>
					<div class="col-sm-3">
						<input type="text" id="productId" name="productId" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="name"/></label>
					<div class="col-sm-3">
						<input type="text" id="name" name="name" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="unitprice"/></label>
					<div class="col-sm-3">
						<input type="text" id="unitprice" name="unitprice" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="description"/></label>
					<div class="col-sm-5">
						<input type="text" id="description" name="description" cols="50" rows="2" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="manufacturer"/></label>
					<div class="col-sm-3">
						<input type="text" id="manufacturer" name="manufacturer" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="category"/></label>
					<div class="col-sm-3">
						<input type="text" id="category" name="category" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="unitsInStock"/></label>
					<div class="col-sm-3">
						<input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="condition"/></label>
					<div class="col-sm-5">
						<input type="radio" name="condition" value="New"><fmt:message key="condition_New"/>
						<input type="radio" name="condition" value="Old"><fmt:message key="condition_Old"/>
						<input type="radio" name="condition" value="Refurbished"><fmt:message key="condition_Refurbished"/>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="productImage"/></label>
					<div class="col-sm-5">
						<input type="file" id="productImage" name="productImage" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="button" value="등록" onclick="checkaddproduct()" class="btn btn-primary" value="<fmt:message key="button"/>">
					</div>
				</div>
			</form>
		</div>
	</div>
	</fmt:bundle>
</body>
</html>