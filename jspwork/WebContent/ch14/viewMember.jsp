<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*"%>
<%! 
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String pwd = "tiger";
	String selectQuery = "select * from member2";
%>
<html>
	<head>
		<title>ȸ�� ���</title>
	</head>
	<body>
		<table width = '400' border = '1'>
			<tr>
				<td>���̵�</td>
				<td>�̸�</td>
				<td>���</td>
				<td>��ȭ��ȣ</td>
			</tr>
			<%
				try{
					Class.forName("oracle.jdbc.driver.OracleDriver");
					conn = DriverManager.getConnection(url, uid, pwd);
					stmt = conn.createStatement();
					rs = stmt.executeQuery(selectQuery.toString());
					
					while(rs.next()){
			%>
			<tr>
				<td><a href = "updateMember.jsp?id=<%=rs.getString("id") %>"><%=rs.getString("id") %></a></td>
				<td><%=rs.getString("name") %></td>
				<td><%int n_class = rs.getInt("mclass");
						if(n_class==1) out.println("�Ϲ�ȸ��");
						else out.println("������");%>
				</td>
				<td><%=rs.getString("tel") %></td>
			</tr>
			<%
					}
				}catch(SQLException se){
					se.printStackTrace();
				}finally{
					try{
						if(rs!=null) rs.close();
						if(stmt!=null) stmt.close();
						if(conn != null) conn.close();
					}catch(SQLException se){
							se.printStackTrace();
					}
				}
	%>

			</table>
		</body>
</html>