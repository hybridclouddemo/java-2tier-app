<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account Number Generator v1</title>
</head>
<body>
	<h2>Account numbers</h2>
	<h3>Source: database</h3>
	<ul>
		<jsp:useBean id="accountNumberGenerator"
			class="com.nordea.cloudteam.DBAccountNumberGenerator" scope="page" />
		<c:forEach items="${accountNumberGenerator.accountNumbers}"
			var="current">
			<li><c:out value="${current}" /></li>
		</c:forEach>

	</ul>
</body>
</html>
