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
		<h3>[���� ���� ������ ����]</h3>
	</center>
	<hr>
	���� ���� ���� ������ �����ϴ�.
	<hr>
	<%
		Object lobj_getdata = session.getAttribute("Testing");
		String is_getdata = (String)lobj_getdata;
		
		int li_primitive = (Integer)session.getAttribute("MyDate");
		out.println("������ ���ǰ�[1]" + is_getdata + "<br><br>");
		out.println("������ ���ǰ�[2]" + li_primitive + "<br><br>");
	%>

</body>
</html>