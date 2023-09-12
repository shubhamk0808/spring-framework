<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="com.shubham.spring.springmvc.models.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration Status</title>
</head>
<body>
	<h1>Registration Status Portal</h1>
	<br>
	<%
	String regStatus = (String) request.getAttribute("regStatus");
	User user = (User) request.getAttribute("user");
	out.println("<b> Your registration status : </b>" + regStatus);
	out.println("<br>");
	out.println("<b>Entered registartion details : </b>");
	out.println("<br>");
	out.println(user);
	%>
</body>
</html>