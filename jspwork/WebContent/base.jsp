<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
		String name = "ȫ�浿";//��������
	%>
	<%
		String addr = "����� ���ı� ���̵�"; //��������
	%>
	<br>
		�̸� : 
		<%= name %><%-- ���� ��� --%>
	<br>
		�ּ� :
		<%
		out.println(addr);
		%>
	<br>
	<jsp:include page = "age.jsp"></jsp:include>
</body>
</html>