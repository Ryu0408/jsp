<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<body bgcolor = "yellow">
	<center>
		<h3>
			[jsep:param 액션 태그에 대한 예제]
		</h3>
	</center>
	<hr>
	이 파일은 yellow02.jsp입니다.<br><hr>
	현재 웹브라우저에 나타난 웹페이지는<br>
	<%= request.getParameter("url") %>로부터 이동되었습니다.
	<hr>
	<%= request.getParameter("url") %>에서 넘어온 메시지 : 
	<%= request.getParameter("news") %>
	<hr>
	웹 브라우저에 나타나는 URL과 전혀 상관없는 파일입니다.
</body>
</body>
</html>