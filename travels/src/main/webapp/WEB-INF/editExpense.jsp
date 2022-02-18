<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Expense</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<h1>Edit Expense</h1>
	<a href="/">Go Back</a>
	
	<div>
		<form:form action="/update" method="post" modelAttribute="editExpense">
			<form:input type="hidden" path="id"/>
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