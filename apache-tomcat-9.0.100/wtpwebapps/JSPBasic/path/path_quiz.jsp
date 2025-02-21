<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>path_quiz</h3>
	<!-- request폴더 req_get_ex01페이지로 상대 경로 -->
	<a href="../../request/req_get_ex01.jsp">request폴더 req_get_ex01페이지로 상대 경로</a>
	<!-- img태그로 html/img폴더 안에 있는 이미지를 상대경로 -->
	<br>
	<img src="../../html/img/a.jpeg">
	<br>
	<img src="../../html/img/b.jpg">
	<!-- img태그로 html/img폴더 안에 있는 이미지를 절대경로 -->
	<img src="/JSPBasic/html/img/a.jpeg">
	<img src="/JSPBasic/html/img/b.jpg"><br>
	<!-- a링크를 통해서 MyServlet페이지로 이동 상대경로 -->
	<a href="../../apple">a링크를 통해서 MyServlet페이지로 이동 상대경로</a><br>
	<!-- a링크를 통해서 MyServlet페이지로 이동 절대경로 -->
	<a href="/JSPBasic/apple">a링크를 통해서 MyServlet페이지로 이동 절대경로</a>
</body>
</html>