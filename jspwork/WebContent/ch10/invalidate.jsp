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
	<center><h3>[������ �����ϴ� ����]</h3></center>
	<hr>
	invalidate() �޼ҵ带 ����Ͽ� ������ �����ϴ� �����Դϴ�.
	<%
		String s_name;
		String s_value="���� ������ ����� ù��° ���̿���.";
		session.setAttribute("s_name1", s_value);
	
		s_value="���� ������ ����� �ι�° ���̿���.";
		session.setAttribute("s_name2", s_value);
	
		s_value="���� ������ ����� ����° ���̿���.";
		session.setAttribute("s_name3", s_value);
	
		out.print("<hr><h3>------------------ ���ǰ� �����ϱ� �� -----------------</h3>");
		
		int i = 0;
		Enumeration enum_app = session.getAttributeNames();
		while(enum_app.hasMoreElements()){
			i++;
			//nextElement ���� ������ 
			s_name = enum_app.nextElement().toString();
			s_value = session.getAttribute(s_name).toString();
			
			out.println("<br>���� ���� �̸� ["+i+"] : " + s_name +"<br>");
			out.println("<br>���� ���� �� ["+i+"] : " + s_value +"<br>");

		}
		
	
		session.removeAttribute("s_name2");
	
		out.print("<hr><h3>------------------ ���ǰ� ������ ��-----------------</h3>");
		i = 0;
		enum_app = session.getAttributeNames();
		while(enum_app.hasMoreElements()){
			i++;
			//nextElement ���� ������ 
			s_name = enum_app.nextElement().toString();
			s_value = session.getAttribute(s_name).toString();
			
			out.println("<br>���� ���� �̸� ["+i+"] : " + s_name +"<br>");
			out.println("<br>���� ���� �� ["+i+"] : " + s_value +"<br>");

		}
		

		session.invalidate(); // == session.setMaxInactiveInterval(arg0)
		s_value = "���� ���� �� ���� ���̿���";
		
		session.setAttribute("s_new", s_value);


		out.print("<hr><h3>------------------ invalidate() ���� ��-----------------</h3>");
		i = 0;
		enum_app = session.getAttributeNames();
		while(enum_app.hasMoreElements()){
			i++;
			//nextElement ���� ������ 
			s_name = enum_app.nextElement().toString();
			s_value = session.getAttribute(s_name).toString();
			
			out.println("<br>���� ���� �̸� ["+i+"] : " + s_name +"<br>");
			out.println("<br>���� ���� �� ["+i+"] : " + s_value +"<br>");

		}
		
		session.invalidate(); // == session.setMaxInactiveInterval(arg0)
		out.print("<hr><h3>------------------ ���� ���� ��-----------------</h3>");
		out.print("<hr> ���� ���� ���̵� ��ȿ�ұ��?<br>");
		if(request.isRequestedSessionIdValid()==true){
			out.print("���� ���̵� ��ȿ�մϴ�.<hr>");
		}
		else out.print("���� ���̵� ��ȿ���� �ʽ��ϴ�.<hr>");
		
		

	
	%>
</body>
</html>