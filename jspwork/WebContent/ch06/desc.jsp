<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>
			[선언부(declaration)에 대한 예제]
		</h3>
	</center>
	<hr>
	<%!
		String str = "안녕하세요! ";
		int a = 5;
		int b = -5;
		
		public int abs(int n){
			if(n < 0)
				n = -n;
			return n;
		}
	%>
	<%
		out.println(str+"<br>");
		out.println(a+"의 절대값은 =>" + abs(a) + "<br>");
		out.println(b+"의 절대값은 =>" + abs(b) + "<br>");
	%>
	<%= str %>
	<br>
	<%= a %>의 절대값은 => <%= abs(a) %>
	<br>
	<%= b %>의 절대값은 => <%= abs(b) %>
	<br>
</body>
</html>