<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="myUtil.HanConv" %>
<%!
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String pwd = "tiger";

%>

<html>
<head>
<title>ȸ�� ���� ó��</title>
</head>
<body>
	<%
	response.setContentType("text/html; charset=euc-kr");
	request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String sclass = request.getParameter("mclass");
	String p1 = request.getParameter("phone1");
	String p2 = request.getParameter("phone2");
	String p3 = request.getParameter("phone3");
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, uid, pwd);
		stmt = con.createStatement();
		StringBuffer insertQuery = new StringBuffer();
		insertQuery.append("INSERT INTO member2 VALUES('");
		insertQuery.append(id + "', '");
		insertQuery.append(pw + "', '");
		insertQuery.append(HanConv.toKor(name) + "', '");
		insertQuery.append(sclass + "', '");
		insertQuery.append(p1 + "-" + p2 + "-" + p3 + "')");
		
		System.out.println(insertQuery.toString());
		
		int re = stmt.executeUpdate(insertQuery.toString());
		
		if(re==1){
		%>	�߰� ����
			<br>
			<a href = "addForm03.html">�߰��۾�</a>
			<a href = "viewMember.jsp">�˻��۾�</a>
		<%
		}else{
		%>	
			<font color = "red"> �߰����� ��.�� </font>
		<%
		}
	}catch(SQLException se){
		se.printStackTrace();
	%>
		�����ҷ� ��� �� �ٽýõ�
	<%
	}
	 %>

	

</body>
</html>