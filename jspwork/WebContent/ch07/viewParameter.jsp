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
	당신이 입력한 정보입니다.
	<hr> 아 이 디 : <%= s_id %>
	<br> 이름 : <%= s_name %>
	<br> 회원구분 : 
	<%
		if(s_class.equals("1")) out.println("일반회원");
		else out.println("교수님");
	%>
	<br> 전화번호 : <%= s_p1 %> - <%= s_p2 %> - <%= s_p3 %> 
</body>