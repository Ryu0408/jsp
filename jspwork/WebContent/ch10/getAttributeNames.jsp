<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center><h3>[������ ���ǰ��� ������ ����-2]</h3></center>
	<hr>
	getAttributeNames() �޼��带 ����Ͽ� ���ǰ��� ������ �����Դϴ�.
	<%
		String is_validate = "���� �������� ���� ���� ���������� ������ ���ǰ��鵵 ��Ÿ���ϴ�.";
		session.setAttribute("Validate", is_validate);
		
		String is_name = "";
		String is_value = "";
		
		Enumeration enum_app = session.getAttributeNames();
		int i=0;
		//hasMoreElements ���� �ִ��� ���� Ȯ��
		
		while(enum_app.hasMoreElements()){
			i++;
			//nextElement ���� ������ 
			is_name = enum_app.nextElement().toString();
			is_value = session.getAttribute(is_name).toString();
			
			out.println("<br>���� ���� �̸� ["+i+"] : " + is_name +"<br>");
			out.println("<br>���� ���� �� ["+i+"] : " + is_value +"<br>");
		}
	%>
</body>
</html>