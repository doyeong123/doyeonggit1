<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<!-- include 삽입 구문1 -->
	<%-- <%@ include file = "menu.jsp" %> --%>
	<!-- 변경 구문 한글 출력하기 -->
	<%! 
		String greeting = "웹 쇼핑몰에 오신 것을 환영합니다";
		String tagline = "Welcome to Web Market!";
	%>
	<div class= "jumbotron">
		<div class ="container">
			<h1 class = "display-3">
				<%= greeting %>
			</h1>
		</div>
	</div>
	<div class ="container">
		<div class="text-center">
			<h3 class="text-ceter">
				<%= tagline %>
			</h3>
			<!-- 삽입 구문 현재 접속 시각 출력하기 -->
			<%
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if (hour /12 ==0)
				{
					am_pm = "AM";
				}
				else
				{
					am_pm = "PM";
					hour = hour -12;
				}
				String CT = hour + ":" + minute + ":" + second +" "+am_pm;
				out.println("현재 접속 시각: "+CT + "\n");
			%>
		</div>
		<hr>
	</div>
	<!-- include 삽입 구문2 -->
	<%@ include file = "footer.jsp" %>
</body>
</html>