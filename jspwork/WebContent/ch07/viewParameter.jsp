<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	String s_id;
	String s_pw;
	String s_name;
	String s_p1;
	String s_p2;
	String s_p3;
	String s_class;
%>
<%
	request.setCharacterEncoding("euc-kr");
	s_id = request.getParameter("id");
	s_pw = request.getParameter("pw");
	s_name = request.getParameter("name");
	s_class = request.getParameter("class");
	s_p1 = request.getParameter("phone1");
	s_p2 = request.getParameter("phone2");
	s_p3 = request.getParameter("phone3");
%>
<body>
	����� �Է��� �����Դϴ�.
	<hr> �� �� �� : <%= s_id %>
	<br> �̸� : <%= s_name %>
	<br> ȸ������ : 
	<%
		if(s_class.equals("1")) out.println("�Ϲ�ȸ��");
		else out.println("������");
	%>
	<br> ��ȭ��ȣ : <%= s_p1 %> - <%= s_p2 %> - <%= s_p3 %> 
</body>