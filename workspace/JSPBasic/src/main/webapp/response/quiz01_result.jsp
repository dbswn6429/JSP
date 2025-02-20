<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
	/*  
	1. 첫번째 페이지에서 넘어온 id,pw를 받습니다.
	2. id,pw가 동일하면 로그인 성공이라고 간주하고, quiz01_welcome페이지로 리다이렉트
	3. 둘중 하나라도 틀렸으면 quiz01_fail페이지로 리다이렉트
	*/
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if (id.equals("aaa123") && pw.equals("1234")) {
        response.sendRedirect("quiz01_welcome.jsp");
    } else {
        response.sendRedirect("quiz01_fail.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
</body>
</html>