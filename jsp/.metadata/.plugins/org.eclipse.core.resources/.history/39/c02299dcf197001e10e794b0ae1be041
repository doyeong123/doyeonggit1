<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Locale" %>
<!DOCTYPE html>
<%
	//request로 locale()을 가져와서 해당 변수에 담는다.
	Locale locale = request.getLocale();
	//Locale 타입 변수를 통해 해당 언어와 국가의 코드들을 저장한다.
	String displayLanguage = locale.getDisplayLanguage();
	String language = locale.getLanguage();
	String displayCoutry =  locale.getDisplayCountry();
	String country = locale.getCountry();
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//출력 코드
		out.println("로케일 언어 : "+displayLanguage + "<br />");
		out.println("로케일 언어 코드 : "+language + "<br />");
		out.println("로케일 국가 : "+displayCoutry + "<br />");
		out.println("로케일 국가 코드 : "+country + "<br />");
		
	%>
</body>
</html>