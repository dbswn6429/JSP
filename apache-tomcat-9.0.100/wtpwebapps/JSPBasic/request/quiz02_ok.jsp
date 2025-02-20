<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	Double height = Double.parseDouble(request.getParameter("height"));
	Double weight = Double.parseDouble(request.getParameter("weight"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 1. form태그를 이용해서 post형식으로 이름, 키와 몸무게를 입력받음
	2. quiz02_ok.jsp로 전송
	3. 해당 페이지 에서는 넘어간 값을 BMI지수를 처리
	4. BMI공식 = kg / (cm/100 * cm/100)  -> 문자열이기 때문에 형변환 진행(실수)
	화면에 이름, 키, 몸무게 BMI지수를 출력
	if을 통해 BMI지수가 25이상 과체중, 18 이하라면 저체중, 나머지는 정상으로 출력 -->
	<%
		double bmi = weight /((height/100) * (height/100));
	
		String status;
		if(bmi>=25){
			status="과체중";
		}else if(bmi<=18){
			status="저체중";
		}else{
			status="정상";
		}
	
	%>
	
	이름:<%=name %><br>
	키:<%=height %>cm<br>
	몸무게:<%=weight%>kg<br>
	BMI:<%= String.format("%.2f", bmi) %><br>
	체중상태:<%=status %>

	
</body>
</html>