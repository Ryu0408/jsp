<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<<jsp:useBean id="myBean" class= "hello.HelloBean" scope = "page"></jsp:useBean>
<hr>

*. 빈 생헝후 저장된 값 출력하기<br><br>
이름 : <jsp:getProperty property="name" name="myBean"/><br>
나이 : <jsp:getProperty property="age" name="myBean"/><br>
<br>

*. 값 변경한 후 출력하기<br><br>
<jsp:setProperty property="name" name="myBean" value="전수빈"/>
<jsp:setProperty property="age" name="myBean" value="10"/>

이름 : <jsp:getProperty property="name" name="myBean"/><br>
나이 : <jsp:getProperty property="age" name="myBean"/><br>