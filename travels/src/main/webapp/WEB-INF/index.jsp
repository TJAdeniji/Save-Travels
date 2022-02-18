<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read Share</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<h1>Safe Travels</h1>
	
	<table>
		<tr>
			<th>Expense</th>
			<th>Vendor</th>
			<th>Amount</th>
		</tr>
		<!-- JSP For loop for table data -->
		<c:forEach var="expense" items="${expenses}">
		<tr>
			<td><a href="/expenses/${expense.id}">${expense.name}</a></td>
			<td><c:out value="${expense.vendor}"/></td>
			<td><c:out value="${expense.amount}"/></td>
			<td><a href="/expenses/edit/${expense.id}">Edit</a></td>
			<td><a href="/expenses/delete/${expense.id}">Delete</a></td>
		</tr>
		</c:forEach>
	</table>
	
	<h2>Add an expense:</h2>
	<div>
		<form:form action="/add" method="post" modelAttribute="addExpense">
			
			<form:label path="name">Expense Name:</form:label>
			<form:errors path="name"/>
			<form:input path="name"/>
			<form:label path="vendor">Vendor:</form:label>
			<form:errors path="vendor"/>
			<form:input path="vendor"/>
			<form:label path="amount">Amount:</form:label>
			<form:errors path="amount"/>
			<form:input path="amount"/>
			<form:label path="description">Description:</form:label>
			<form:errors path="description"/>
			<form:textarea path="description" rows="10" cols="30"></form:textarea>
			<input type='submit' value='Submit'/>
		</form:form>
	</div>
	
</body>
</html>