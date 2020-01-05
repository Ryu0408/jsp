<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*"%>	
<%@ page import="javax.sql.DataSource"%>	
<%@ page import="myUtil.HanConv"%>
<html>
	<head>
	</head>
	<body>
		<%!
			Connection con = null;
			PreparedStatement ps = null;
		%>
		<%
			try{
				con = ((DataSource)(new InitialContext().lookup("java:comp/env/jdbc/oracle"))).getConnection();
			}catch(NamingException ne){
				ne.printStackTrace();
			}catch(SQLException se){
				se.printStackTrace();
			}
		
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String vclass = request.getParameter("mclass");
			String tel = request.getParameter("tel");
			
			StringBuffer updateQuery = new StringBuffer();
			updateQuery.append("update member2 set name=?, mclass=?, tel=? where id=?");
			try{
				ps=con.prepareStatement(updateQuery.toString());
				ps.setString(1, HanConv.toKor(name));
				ps.setInt(2, Integer.parseInt(vclass));
				ps.setString(3, tel);
				ps.setString(4, id);
				
				int re = ps.executeUpdate();
				
				if(re==1){ %>
					<%=id %>�� ������ �����Ǿ����ϴ�.<br>
					<a href = "viewMember.jsp">��Ϻ���</a>
				<%}else{%>
					���� ����
				<%
				}
			}catch(SQLException se){
				se.printStackTrace();
				%>
				�����ҷ� ����� �ٽ� �õ�
				<%
			}
		%>
	</body>
</html>