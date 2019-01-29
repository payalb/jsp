<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="student" scope="session" class="jspdemo.Student"> </jsp:useBean>

<jsp:setProperty property="id" name="student" value="${param.id}"/>

<jsp:getProperty property="id" name="student"/>
</body>
</html>


