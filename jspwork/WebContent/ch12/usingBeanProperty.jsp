<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<<jsp:useBean id="myBean" class= "hello.HelloBean" scope = "page"></jsp:useBean>
<hr>

*. �� ������ ����� �� ����ϱ�<br><br>
�̸� : <jsp:getProperty property="name" name="myBean"/><br>
���� : <jsp:getProperty property="age" name="myBean"/><br>
<br>

*. �� ������ �� ����ϱ�<br><br>
<jsp:setProperty property="name" name="myBean" value="������"/>
<jsp:setProperty property="age" name="myBean" value="10"/>

�̸� : <jsp:getProperty property="name" name="myBean"/><br>
���� : <jsp:getProperty property="age" name="myBean"/><br>