<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="hello.HelloBean"%>

<<jsp:useBean id="myBean" class= "hello.HelloBean" scope = "page"></jsp:useBean>
<hr>
*.�� ������ ����� �� ����ϱ�<br><br>
�̸� : <%=myBean.getName() %><br>
���� : <%=myBean.getAge() %><br><br>

*.�� ������ ����ϱ�<br><br>
<%myBean.setName("������"); %>
<%myBean.setAge(10); %>

�̸� : <%=myBean.getName() %><br>
���� : <%=myBean.getAge() %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>