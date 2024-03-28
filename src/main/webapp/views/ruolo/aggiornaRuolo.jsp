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
    <img src="https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExdG14M3Vrd2draG80NGYzbHF2dzlycjk3bnJ6djJwYXFteTdqejVleiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/zf0viG3j3QGEdYMa1Z/giphy.gif" width="200" alt="Working Work From Home Sticker by Pusheen">
    <span>SEARCH YOUR ROLE</span>
</div>
<%	Ruolo r = (Ruolo) request.getAttribute("idRuolo"); %>

<form action="${pageContext.request.contextPath}/ruolo/aggiornaRuolo" method= "POST">  

<h2>Update Role</h2>
<table>
<tr><td>ID Role</td>
<th><input type="text" id="IdRuolo" name="IdRuolo" value="<%=r.getIdRuolo()%>"readonly></th></tr>
<tr><td>Description:</td><th><input type="text" id="descrizione" name="descrizione" value =" <%= r.getDescrizione() %>"></th></table>
</tr><table>
		<tr> 
		<h4>Select:</h4>
		</tr>
		<tr>
		<th><input type="submit" value="Submit"></th>
		<th><input type="reset" value="Reset"></th></tr></table>
</form>
</body>
</html>