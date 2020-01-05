<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage = "error02.jsp" %>
<%!
	String s_name;
	int age;


%>

<%
	request.setCharacterEncoding("euc-kr");
	
	s_name = request.getParameter("name");
	age	= Integer.parseInt(request.getParameter("age"));
	
%>

<h3>회원정보 출력</h3><hr>
당신의 이름은 <%= s_name %>입니다.<br>
당신의 나이는 <%= age %>살입니다.<br>
