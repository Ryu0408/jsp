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
			[jsp:param �׼� �±׿� ���� ����]
			
		</h3>
	</center>
	<hr>
	�� ������ red02.jsp�Դϴ�. <br>
	�������� ������ ���������� ��Ÿ�����?<br>
	�������� ������ ��������� ��Ÿ�����?<br>
	forward �׼� �±װ� ����Ǹ� �� �������� ������ ��µ��� �ʽ��ϴ�.<br>
	<jsp : forward page = "yellow02.jsp">
	<jsp : param name = "url" value = "red02.jsp">
	<jsp : param name = "news" value = "Happy New Year!">
	</jsp : forward>

</body>
</html>