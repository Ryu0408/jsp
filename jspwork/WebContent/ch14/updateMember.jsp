<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>	
<%@ page import="javax.sql.DataSource"%>	 
<html>
	<head>
		<title>ȸ�� ���� ����</title>
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
					System.out.println("DBCP ���� ����");
					
					StringBuffer selectQuery = new StringBuffer();
					selectQuery.append("select name, mclass, tel from member2 where id=?");
					
					String id = request.getParameter("id");
					
					ps = con.prepareStatement(selectQuery.toString());
					ps.setString(1, id);
					rs = ps.executeQuery();
					
					if(rs.next()){
		%>
						<form method = "post" action = "updateProcess.jsp">
							���̵� : 
							<input type = "text" name = "id" readonly value = "<%=id %>"><br>
							�̸� : 
							<input type = "text" name = "name" value = "<%=rs.getString("name") %>"><br>
							ȸ����� : 
							<input type = "text" name = "mclass" value = "<%=rs.getString("mclass") %>"><br>
							��ȭ��ȣ : 
							<input type = "text" name = "tel" value = "<%=rs.getString("tel") %>"><br>
							<input type = "submit" value = "����">
							<a href = "viewMember.jsp">��Ϻ���</a>
						</form>
					<%}else{%>
						<font color = "red">���̵� ����~~~~</font>
						<a href = "viewMember.jsp">��Ϻ���</a>
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