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
	<center><h3>[설정된 세션값을 얻어오는 예제-2]</h3></center>
	<hr>
	getAttributeNames() 메서드를 사용하여 세션값을 얻어오는 예제입니다.
	<%
		String is_validate = "현재 페이지는 물론 이전 페이지에서 설정된 세션값들도 나타납니다.";
		session.setAttribute("Validate", is_validate);
		
		String is_name = "";
		String is_value = "";
		
		Enumeration enum_app = session.getAttributeNames();
		int i=0;
		//hasMoreElements 값이 있는지 여부 확인
		
		while(enum_app.hasMoreElements()){
			i++;
			//nextElement 다음 값으로 
			is_name = enum_app.nextElement().toString();
			is_value = session.getAttribute(is_name).toString();
			
			out.println("<br>얻어온 세션 이름 ["+i+"] : " + is_name +"<br>");
			out.println("<br>얻어온 세션 값 ["+i+"] : " + is_value +"<br>");
		}
	%>
</body>
</html>