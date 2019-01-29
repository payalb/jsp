<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*"  isELIgnored="false" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forward jsp</title>
</head>
<body>
<%= LocalDate.now() %>
${2+2}
${ LocalDate.now()  }
<c:out value="Hello"></c:out>
<c:out value="x"></c:out>
<c:set var="x" value="5" scope="session"></c:set>

<c:out value="${x}" default="0"></c:out>
<%@include file="one.jsp" %> <!-- compile time: directives -->
<br/>
<jsp:declaration>int x=5;</jsp:declaration>
<br/>
<jsp:expression>x</jsp:expression>
<br/>
<jsp:scriptlet>out.println(x);</jsp:scriptlet>
<br/>
<%
for(int i=0; i<=10; i++)
{
out.println(i);
}
%>
</body>
</html>