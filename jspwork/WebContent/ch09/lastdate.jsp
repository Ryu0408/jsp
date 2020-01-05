<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.text.DateFormat, java.util.Date" %>
<%  
	Cookie lastDate = null;
	String msg = "";
	boolean found = false;
	String newValues = "" + System.currentTimeMillis();
	
	Cookie[] cookies = request.getCookies();
	
	for(int i = 0 ; i<cookies.length; i++){
		lastDate = cookies[i];
		if(lastDate.getName().equals("lastdateCookie")){
			found = true;
			break;
		}
	}
	
	if(!found){
		msg="처음 방분입니다............";
		lastDate = new Cookie("lastdateCookie", newValues);
		lastDate.setMaxAge(365*24*60*60);
		lastDate.setPath("/");
		response.addCookie(lastDate);
	}else{
		long conv = Long.parseLong(lastDate.getValue());
		msg = "당신의 마지막 방문 : " + new Date(conv);
		lastDate.setValue(newValues);
		response.addCookie(lastDate);
	}
%>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>
		<%= msg %>
	</h2>
</body>
</html>