<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="errorPage.jsp"%>
    <%@page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Implicit object</title>
</head>
<body>
<%! int count=0; %>
<% count++; %>
<%-- <%= 5/0 %> --%>
<%= config.getInitParameter("username") %>
<%= request.getRequestURI() %>
<% out.println("Done"); %>
<%= session.getId() %> <!-- 1 user: cart -->
<%= application.getInitParameter("password")%>
<% application.setAttribute("count", count); %> <!-- no of users who visited ur site -->
</body>
</html>