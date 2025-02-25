<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>quiz03.jsp</h3>
	<!-- 다음을 구현하고 a태그 클릭시 quiz03_ok에 학생의 번호를 출력 -->
		<%for(int i = 1; i<=30; i++){%>
			<br>
			<a href="quiz03_ok.jsp?studentNo=<%= i %>"><%= i %>번 학생</a>
		<%} %>
</body>
</html>