<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    Cookie[] arr2 = request.getCookies();
	String rememberMe = "";  
    if (arr2 != null) {
        for (Cookie c1 : arr2) {
            if (c1.getName().equals("rememberMe")) {  
                rememberMe = c1.getValue();  
            }
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	로그인에 성공하면 "아이디기록용" 쿠키를 하나 생성
	
	이 페이지에 집입할 때, "아이디기록용" 쿠키가 있다면, input태그에 쿠키값을 미리 찍어주면 됩니다
	 -->
	<form action="cookie_ex01_result.jsp" method="post">
		<input type = "text" name = "id" value="<%= rememberMe %>" placeholder="아이디"><br>
		<input type = "password" name = "pw" placeholder="비밀번호">
		<input type = "submit" value="쿠키로그인"><br>
		<input type = "checkbox" name = "idcheck" value="yes">아이디기억하기
	</form>
</body>
</html>