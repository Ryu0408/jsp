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
		<h3>[���� ������ ������ �޼ҵ带 ����� ����]</h3>
	</center>
	<hr> 
	<%
		String id_str=session.getId();
		long lasttime = session.getLastAccessedTime();
		//������ ������ �Ҿ�� �ð�
		long createdtime = session.getCreationTime();
		// ó���� ������ �Ҿ�� �ð�
		long time_used = (lasttime - createdtime) / 60000;
		// �ӹ��ð� ���
		long inactive = session.getMaxInactiveInterval()/60;
		// ������ȿ�ð� ����
		boolean b_new=session.isNew();
		// true�� ó�������Ȱ�, ��������Ÿ� false��ȯ
	%>
	[1] ���� id�� [<%=session.getId() %>]�Դϴ�.<br><hr>
	[2] ����� �� ����Ʈ�� �ӹ� �ð��� <%= time_used %> ���Դϴ�.<br><hr>
	[3] ������ ��ȿ�ð���  <%= inactive %> ���Դϴ�.<br><hr>
	[4] ������ ���� ����� ������???<br><br>
	<%
		if(b_new) out.print("��!! ���ο� ������ ��������ϴ�.");
		else out.print("�ƴϿ�!! ���ο� ������ ������ �ʾҽ��ϴ�.");
	%>
</body>
</html>