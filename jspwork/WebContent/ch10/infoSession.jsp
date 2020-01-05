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
		<h3>[세션 정보를 얻어오는 메소드를 사용한 예제]</h3>
	</center>
	<hr> 
	<%
		String id_str=session.getId();
		long lasttime = session.getLastAccessedTime();
		//마지막 세션을 불어온 시간
		long createdtime = session.getCreationTime();
		// 처음에 세션이 불어온 시간
		long time_used = (lasttime - createdtime) / 60000;
		// 머문시간 계산
		long inactive = session.getMaxInactiveInterval()/60;
		// 세션유효시간 설정
		boolean b_new=session.isNew();
		// true면 처음생성된거, 만들어진거면 false반환
	%>
	[1] 세션 id는 [<%=session.getId() %>]입니다.<br><hr>
	[2] 당신이 웹 사이트에 머문 시간은 <%= time_used %> 분입니다.<br><hr>
	[3] 세션의 유효시간은  <%= inactive %> 분입니다.<br><hr>
	[4] 세션이 새로 만들어 졌나요???<br><br>
	<%
		if(b_new) out.print("예!! 새로운 세션을 만들었습니다.");
		else out.print("아니오!! 새로운 세션이 만들지 않았습니다.");
	%>
</body>
</html>