<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>	
<%@ page import="javax.sql.DataSource"%>	 
<html>
	<head>
		<title>회원 정보 수정</title>
	</head>
	<body>
		<%!
			Connection con = null;
			DataSource ds = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
		%>
		<%
			try{
					Context ctx = new InitialContext();
					ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
					con = ds.getConnection();
					System.out.println("DBCP 연동 성공");
					
					StringBuffer selectQuery = new StringBuffer();
					selectQuery.append("select name, mclass, tel from member2 where id=?");
					
					String id = request.getParameter("id");
					
					ps = con.prepareStatement(selectQuery.toString());
					ps.setString(1, id);
					rs = ps.executeQuery();
					
					if(rs.next()){
		%>
						<form method = "post" action = "updateProcess.jsp">
							아이디 : 
							<input type = "text" name = "id" readonly value = "<%=id %>"><br>
							이름 : 
							<input type = "text" name = "name" value = "<%=rs.getString("name") %>"><br>
							회원등급 : 
							<input type = "text" name = "mclass" value = "<%=rs.getString("mclass") %>"><br>
							전화번호 : 
							<input type = "text" name = "tel" value = "<%=rs.getString("tel") %>"><br>
							<input type = "submit" value = "수정">
							<a href = "viewMember.jsp">목록보기</a>
						</form>
					<%}else{%>
						<font color = "red">아이디 없음~~~~</font>
						<a href = "viewMember.jsp">목록보기</a>
					<%}
				}catch(NamingException ne){
					ne.printStackTrace();
				}catch(SQLException se){
					se.printStackTrace();
				}finally{
					try{
						if(rs!=null) rs.close();
						if(con != null) con.close();
					}catch(SQLException se){
							se.printStackTrace();
					}
				}%>
					
	</body>
</html>