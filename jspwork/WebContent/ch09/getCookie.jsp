<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>
			[��Ű�� ���� ������ ����]
			
		</h3>
	</center>
</body>
</html>
<%
	Cookie[] cookies = request.getCookies();
	out.println("<br><hr>");
	for(int i=0; i<cookies.length; i++){
		out.println(i+"��° ũŰ�� �̸� =>"+cookies[i].getName());
		out.println("<br><br>");
		out.println("��Ű�� ������ �� =>"+cookies[i].getValue());
		out.println("<br><br>");
	}
%>