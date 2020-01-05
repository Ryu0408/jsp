<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<big> 접속한 클라이언트의 ip : </big>
<%=request.getRemoteAddr()%>
<br>
<%=request.getServerName()%>
<br> 요청방식:
<%=request.getMethod()%><%--get or post--%>
<br> 프로토콜 :
<%=request.getProtocol() %>
<br> 요청한 URL :
<%=request.getRequestURL()%>
<br> 요청한 URI : 
<%=request.getRequestURI()%>