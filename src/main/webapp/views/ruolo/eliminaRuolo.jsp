<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Ruolo"%>
<!DOCTYPE html>
<html>
<head>   
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My Page</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="container">
    <img src="https://media0.giphy.com/media/ysDzcaDoMVJBQMuhzC/giphy.gif" width="300" alt="Scaredy Cat Sticker by Pusheen">
    <span>DELETE ROLE</span>
</div>
 <form action="${pageContext.request.contextPath}/ruolo/eliminaRuolo" method= "GET">
   <table>
        <td>ID Role:</td>
		<th><input type="number" id="idRuolo" name="idRuolo" ></th></table>
		<table>
		<tr> <h4>Select:</h4>
		</tr>
		<tr>
		<th><input type="submit" value="submit"></th>
		<th><input type="reset" value="Reset"></th></tr></table>
	</form>
</body>
</html>