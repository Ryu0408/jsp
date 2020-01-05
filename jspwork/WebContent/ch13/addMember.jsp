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
<title>회원 가입 처리</title>
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
		%>	추가 성공
			<br>
			<a href = "addForm03.html">추가작업</a>
			<a href = "viewMember.jsp">검색작업</a>
		<%
		}else{
		%>	
			<font color = "red"> 추가실패 ㅠ.ㅠ </font>
		<%
		}
	}catch(SQLException se){
		se.printStackTrace();
	%>
		서버불량 잠시 후 다시시도
	<%
	}
	 %>

	

</body>
</html>