<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="jumbotron">

		<div class="container">
			<form name="newproduct" action="./processaddproduct.jsp"
			class="form-horizontal" method="post" enctype="multipart/form-data">
				<h1 class="display-3">상품 등록</h1>
				<div class="form-group row">
					<label class="col-sm-2">상품 코드</label>
						<div class="col-sm-3">
							<input type="text" id="productid" name="productid" class="form-control">
						</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상품명</label>
						<div class="col-sm-3">
							<input type="text" id="name" name="name" class="form-control">
						</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">가격</label>
						<div class="col-sm-3">
							<input type="text" id="unitprice" name="unitprice" class="form-control">
						</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상세 정보</label>
						<div class="col-sm-5">
							<textarea name="description" rows="2" cols="50" class="form-control"></textarea>
						</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">제조사</label>
						<div class="col-sm-3">
							<input type="text" name="manufacturer" class="form-control">
						</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">분류</label>
						<div class="col-sm-3">
							<input type="text" name="category" class="form-control">
						</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">재고 수</label>
						<div class="col-sm-3">
							<input type="text" id="unitsinstock" name="untisinstock" class="form-control">
						</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상태</label>
						<div class="col-sm-5">
							<input type="radio" name="condition" class="new ">
							신규 제품
							<input type="radio" name="condition" class="old">
							중고 제품
							<input type="radio" name="condition" value="refurbished">
							재생 제품
						</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">이미지</label>
					<div class="col-sm-5">
						<input type="file" name="productimage" class="form-control">
					</div>
				</div>	
				<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="button" class="btn btn-primary" value="등록" onclick="CheckAddProduct()">
					</div>
			</div>
		</form>
	</div>
</body>
</html>