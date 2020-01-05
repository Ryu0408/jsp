<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center><h3>[설정된 세션 값을 삭제하는 예제]</h3></center>
	<hr>
	removeAttributeNames() 메서도를 사용하여 세션값을 삭제하는 예제입니다.
	<%
		String s_name;
		String s_value="저는 세션이 저장된 첫번째 값이에요.";
		session.setAttribute("s_name1", s_value);
		
		s_value="저는 세션이 저장된 두번째 값이에요.";
		session.setAttribute("s_name2", s_value);
		
		s_value="저는 세션이 저장된 세번째 값이에요.";
		session.setAttribute("s_name3", s_value);
		
		out.print("<hr><h3>------------------ 세션값 삭제하기 전 -----------------</h3>");
		
		int i = 0;
		Enumeration enum_app = session.getAttributeNames();
		while(enum_app.hasMoreElements()){
			i++;
			//nextElement 다음 값으로 
			s_name = enum_app.nextElement().toString();
			s_value = session.getAttribute(s_name).toString();
			
			out.println("<br>얻어온 세션 이름 ["+i+"] : " + s_name +"<br>");
			out.println("<br>얻어온 세션 값 ["+i+"] : " + s_value +"<br>");

		}
		
	
		session.removeAttribute("s_name2");
	
		out.print("<hr><h3>------------------ 세션값 삭제한 후-----------------</h3>");
		i = 0;
		enum_app = session.getAttributeNames();
		while(enum_app.hasMoreElements()){
			i++;
			//nextElement 다음 값으로 
			s_name = enum_app.nextElement().toString();
			s_value = session.getAttribute(s_name).toString();
			
			out.println("<br>얻어온 세션 이름 ["+i+"] : " + s_name +"<br>");
			out.println("<br>얻어온 세션 값 ["+i+"] : " + s_value +"<br>");

		}
	%>
</body>
</html>