<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*"%>
<%@ page import = "javax.naming.*"%>
<%@ page import = "javax.sql.DataSource"%>
<html>
	<head>
		<title>디비 연동</title>
	</head>
	<body>
		<%!
			Connection con = null;
			DataSource ds = null;
		%>
		<%
			try{
				Context ctx = new InitialContext();
				ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
				con = ds.getConnection();
				System.out.println("DBCP 연동 성공");
			}catch(NamingException ne){
				ne.printStackTrace();
			}catch(SQLException se){
				se.printStackTrace();
			}finally{
				try{
					if(con !=null) con.close();
				}catch(Exception e){
					e.printStackTrace();
				}
			}
		%>
	</body>
</html>