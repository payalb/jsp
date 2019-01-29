<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="co"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<co:set var="x" value="34" scope="session"></co:set>
	<!-- In if, every condition is evaluated -->
	<co:if test="${x>20}">
		<co:out value="x is greater than 20"></co:out>
	</co:if>
	<co:if test="${x<=20}">
		<co:out value="x is greater than 20"></co:out>
	</co:if>
	<br />

	<h2>switch demo</h2>
	<co:choose>
		<co:when test="${x>20 }">
			<co:out value=" x is greater than 20: ${x}"></co:out>
		</co:when>
		<co:when test="${x<0 }">
			<co:out value=" x is less than 20: ${x}"></co:out>
			<co:set var="x" value="${x-1}"></co:set>
		</co:when>
		<co:otherwise>
			<co:out value=" x is equal to 20: ${x}"></co:out>
		</co:otherwise>
	</co:choose>


	<h2>Loop demo</h2>
	<co:forEach begin="1" end="20" var="x" step="3">
		<co:out value="${x}"></co:out>
	</co:forEach>

	<co:remove var="x" scope="session" />

	${x}
	<co:out value="${x}"></co:out><br/>
	<co:set var="x" value="apple,banana,peer"></co:set>
	<co:forTokens items="${x}" delims="," var="fruit">
		<co:out value="${fruit}"></co:out><br/>
	</co:forTokens>

	
	<%-- <co:redirect url="./one.jsp">
	<co:param name="username" value="payal" ></co:param>
	</co:redirect> --%>
	
	<co:import url="./one.jsp" var="y" scope="request">
	<co:param name="username" value="payal"></co:param>
	</co:import>
	
	<co:out value="${y}"></co:out>
</body>
</html>