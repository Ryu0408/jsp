<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String is_test = "���ǿ� ����� �����Ͱ� �ٷ� ���ϴ�.^^";
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
		<h3>[���� ���� �����ϴ� ����]</h3>
		<hr>
		���� ���� �����ϴ� �������Դϴ�.
	</center>
</body>
</html>