<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p> 숫자 : <fmt:formatNumber value="3200100"/>
	<!-- type=숫자로 -->
	<p> <fmt:formatNumber value="3200100" type="number"/>
	<!-- type=숫자로 groupingUsed는 없이 출력 -->
	<p> <fmt:formatNumber value="3200100" type="number" groupingUsed="false"/>
	<!-- type=currency(원화표기) gorupingUsered있게 출력 -->
	<p> <fmt:formatNumber value="3200100" type="currency" groupingUsed="true"/>
	<!-- type=cerrency(원화표기) cerrencySimbol을 &로 표기 -->
	<p> <fmt:formatNumber value="3200100" type="currency" groupingUsed="&"/>
	<!-- percent로 표시 -->
	<p> <fmt:formatNumber value="0.45" type="percent" />
	<!-- 최대 10자리까지, 소숫점 2번째까지 표기되게끔 출력 -->
	<p> <fmt:formatNumber value="3200100" minIntegerDigits="10" minFractionDigits="2"/>
	<!-- pattern처럼 표기 -->
	<p> <fmt:formatNumber value="3200100.45" pattern=".000"/>
	<!-- pattern으로 표기 -->
	<p> <fmt:formatNumber value="3200100.456" pattern="#,#00.0#"/>
	
</body>
</html>