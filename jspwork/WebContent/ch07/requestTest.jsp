<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<big> ������ Ŭ���̾�Ʈ�� ip : </big>
<%=request.getRemoteAddr()%>
<br>
<%=request.getServerName()%>
<br> ��û���:
<%=request.getMethod()%><%--get or post--%>
<br> �������� :
<%=request.getProtocol() %>
<br> ��û�� URL :
<%=request.getRequestURL()%>
<br> ��û�� URI : 
<%=request.getRequestURI()%>