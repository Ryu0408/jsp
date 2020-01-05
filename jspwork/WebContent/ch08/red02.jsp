<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor = "red">
	<center>
		<h3>
			[jsp:param 액션 태그에 대한 예제]
			
		</h3>
	</center>
	<hr>
	이 파일은 red02.jsp입니다. <br>
	웹브라우저 배경색이 빨간색으로 나타날까요?<br>
	웹브라우저 배경색이 노란색으로 나타날까요?<br>
	forward 액션 태그가 실행되면 이 페이지의 내용은 출력되지 않습니다.<br>
	<jsp : forward page = "yellow02.jsp">
	<jsp : param name = "url" value = "red02.jsp">
	<jsp : param name = "news" value = "Happy New Year!">
	</jsp : forward>

</body>
</html>