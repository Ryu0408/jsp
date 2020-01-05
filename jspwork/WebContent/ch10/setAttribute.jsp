<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String is_test = "세션에 저장된 데이터가 바로 접니다.^^";
	session.setAttribute("Testing", is_test);
	session.setAttribute("MyDate", 10);
	
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>[세션 값을 설정하는 예제]</h3>
		<hr>
		세션 값을 설정하는 페이지입니다.
	</center>
</body>
</html>