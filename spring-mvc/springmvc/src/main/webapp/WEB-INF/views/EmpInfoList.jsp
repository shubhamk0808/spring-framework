<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" import="com.shubham.spring.springmvc.models.Employee, java.util.List" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Database</title>
</head>
<body>
	<h1>Welcome to Employee information portal</h1>
	<br>
	<br>
	
	
	<%
	List<Employee> employees = (List<Employee>) request.getAttribute("empList");
	
	for(Employee emp : employees){
		out.println("<b> Id : </b>" + emp.getId() + " | ");
		out.println("<b> Name : </b>" + emp.getName() + " | ");
		out.println("<b> Salary : </b>" + emp.getSalary());
		out.println("<br>");
	}	
	%>
	
</body>
</html>