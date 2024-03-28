<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Persona"%>
<%@ page import="com.ctr.PersonaCtr"%>
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
    <img src="https://media0.giphy.com/media/GZ1kHk53BUdDXsQWmP/giphy.gif" width="200" alt="Cat Working Sticker By Pusheen">
    <span>YOUR DATA</span>
</div>

	<%Persona p = (Persona) request.getAttribute("idPersona");%>

	<form action="${pageContext.request.contextPath}/persona/ricercaByIdPersona" method="POST">

		<h2>Persona</h2>
<table>
		<tr>
		<td>ID Persona:</td>
		<td>First Name:</td>
		<td>Last name:</td>
		<td>ID Cod:</td>
		<td>Email:</td>
		</tr>
		<tr>
		<th><input type="text" id="IdPersona" name="IdPersona"value="<%=request.getParameter("idPersona")%>" readonly> 
	    </th>
	    <th><input type="text" id="nome" name="nome" value=" <%=p.getNome()%>" readonly> </th>
		<th><input type="text" id="cognome" name="cognome" value=" <%=p.getCognome()%>" readonly></th>
		<th><input type="text" id="codfiscale" name="codfiscale"value=" <%=p.getCodFiscale()%>" readonly> </th>
		<th><input type="text" id="email"name="email" value=" <%=p.getEmail()%>" readonly> </th>
		</tr></table>
	<br> 
	<a href="${pageContext.request.contextPath}/home">
<button type="button">Home</button></a>
	</form>
	
</body>
</html>