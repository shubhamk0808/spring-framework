<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration Form</title>
</head>
<body>
	<h1>User Registration Form</h1>
	<form action="registerUser" method="post">
		<table style="with: 50%">
			<tr>
				<td>Id</td>
				<td><input type="text" name="id" /></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>Age</td>
				<td><input type="text" name="age" /></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><input type="text" name="address" /></td>
			</tr>
		</table>
		<input type="submit" value="Submit" />
	</form>
</body>
</html>