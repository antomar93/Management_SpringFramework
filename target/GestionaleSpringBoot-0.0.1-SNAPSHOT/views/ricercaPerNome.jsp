<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Persona" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
form, h2 {
	font-family: poppins, sans-serif;
	padding: 20px;
}

input[type=text], select {
	width: 30%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}
input[type=number], select {
	width: 30%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}


input[type=submit] {
	width: 30%;
	background-color: #a38cff;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit] {
	font-family: poppins, sans-serif;
}

input[type=submit]:hover {
	background-color: #c3a9ff;
}
input[type=reset] {
	width: 30%;
	background-color: #a38cff;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=reset] {
	font-family: poppins, sans-serif;
}

input[type=reset]:hover {
	background-color: #c3a9ff;
}

div {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}
</style>
<body>
	<h2>Search by Name</h2>
    
        <label for="name">Name:</label><br>
		<input type="text" id="name" name="name" ><br> <br>
		<input type="submit" value="submit"><br>
		<input type="reset" value="Reset">
</body>
</html>