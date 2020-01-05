<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="hello.HelloBean"%>

<<jsp:useBean id="myBean" class= "hello.HelloBean" scope = "page"></jsp:useBean>
<hr>
*.빈 생성후 저장된 값 출력하기<br><br>
이름 : <%=myBean.getName() %><br>
나이 : <%=myBean.getAge() %><br><br>

*.값 변경후 출력하기<br><br>
<%myBean.setName("전수빈"); %>
<%myBean.setAge(10); %>

이름 : <%=myBean.getName() %><br>
나이 : <%=myBean.getAge() %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>