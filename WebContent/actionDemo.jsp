<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Action demo</title>
</head>
<body>
<form action="studentInfo.jsp" method="post">
<%-- Jsp forward: To forward request to another page
<jsp:forward page="./one.jsp"></jsp:forward> --%>

Include the content of one.jsp inside this page
Directives work at compile time, to include a dynamic file
Action tags: runtime. static file
<jsp:include page="./one.jsp"></jsp:include>

<jsp:useBean id="student" class="jspdemo.Student" scope="session"></jsp:useBean>
Id: <input type="number" name="id"/>
Name: <input type="text" name="name"/> 
<input type="submit"/>
</form>
</body>
</html>