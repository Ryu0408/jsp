<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean class = "magic.MemberBean" id = "memBean"/>
<jsp:setProperty property="*" name = "memBean"/>
<html>
	<body>
		당신이 입력한 정보입니다.<hr>
		# 아이디 : <jsp:getProperty name="memBean" property="id"/><br>
		# 이름 : <jsp:getProperty name="memBean" property="name"/><br>
		# 회원구분 : 
		<%
			if(memBean.getMclass()==1) out.println("일반회원");
			else out.println("교수님");
		%><br>
		전화번호 : 
		<jsp:getProperty name="memBean" property="phone1"/>&nbsp;-
		<jsp:getProperty name="memBean" property="phone2"/>&nbsp;-
		<jsp:getProperty name="memBean" property="phone3"/>
	</body>
</html>


