<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie info = new Cookie("testCookie","I am First Cookie!!");

	info.setMaxAge(365*24*60*60);
	info.setPath("/");
	
	response.addCookie(info);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>
		쿠키를 처음 설정하는 중입니다....................
	</h2>
</body>
</html>