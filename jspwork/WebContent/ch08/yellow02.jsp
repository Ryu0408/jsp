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
			[jsep:param �׼� �±׿� ���� ����]
		</h3>
	</center>
	<hr>
	�� ������ yellow02.jsp�Դϴ�.<br><hr>
	���� ���������� ��Ÿ�� ����������<br>
	<%= request.getParameter("url") %>�κ��� �̵��Ǿ����ϴ�.
	<hr>
	<%= request.getParameter("url") %>���� �Ѿ�� �޽��� : 
	<%= request.getParameter("news") %>
	<hr>
	�� �������� ��Ÿ���� URL�� ���� ������� �����Դϴ�.
</body>
</body>
</html>