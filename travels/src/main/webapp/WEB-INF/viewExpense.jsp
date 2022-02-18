<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Expense</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<h1>Expense Details</h1>
	<a href="/">Go Back</a>
	
	<p>Expense Name: </p>
	<p><c:out value="${expense.name}"/></p> 
	<p>Expense Description: </p>
	<p><c:out value="${expense.description}"/></p>
	<p>Vendor: </p>
	<p><c:out value="${expense.vendor}"/></p>
	<p>Amount Spent: </p>
	<p><c:out value="${expense.amount}"/></p>

</body>
</html>