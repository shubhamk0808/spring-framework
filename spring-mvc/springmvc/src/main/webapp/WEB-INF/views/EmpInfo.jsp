<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Welcome to Employee information portal</h1>
	<br>
	<br>
	<!-- There are two ways to extract information from controller : i) Using scriplet ii) Using JSP EL -->
	<!-- Using scriplet -->
	<h2>Employee 1 Data :</h2>
	<%
	Integer id = (Integer) request.getAttribute("id1");
	String name = (String) request.getAttribute("name1");
	Float salary = (Float) request.getAttribute("salary1");

	out.println("Id : " + id);
	out.println("Name : " + name);
	out.println("Salary : " + salary);
	%>
	<br>
	<br>
	<h2>Employee 2 Data :</h2>
		<b> Id : </b> ${id2}
		<b> Name : </b> ${name2}
		<b> Salary : </b> ${salary2}
</body>
</html>