<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean class = "magic.MemberBean" id = "memBean"/>
<jsp:setProperty property="*" name = "memBean"/>
<html>
	<body>
		����� �Է��� �����Դϴ�.<hr>
		# ���̵� : <jsp:getProperty name="memBean" property="id"/><br>
		# �̸� : <jsp:getProperty name="memBean" property="name"/><br>
		# ȸ������ : 
		<%
			if(memBean.getMclass()==1) out.println("�Ϲ�ȸ��");
			else out.println("������");
		%><br>
		��ȭ��ȣ : 
		<jsp:getProperty name="memBean" property="phone1"/>&nbsp;-
		<jsp:getProperty name="memBean" property="phone2"/>&nbsp;-
		<jsp:getProperty name="memBean" property="phone3"/>
	</body>
</html>


