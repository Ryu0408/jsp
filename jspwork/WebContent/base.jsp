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
		String name = "홍길동";//전역변수
	%>
	<%
		String addr = "서울시 송파구 석촌동"; //지역변수
	%>
	<br>
		이름 : 
		<%= name %><%-- 변수 출력 --%>
	<br>
		주소 :
		<%
		out.println(addr);
		%>
	<br>
	<jsp:include page = "age.jsp"></jsp:include>
</body>
</html>