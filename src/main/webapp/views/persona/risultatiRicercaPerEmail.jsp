<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<table>
		<tr>
			<td>Id Persona</td>
			<td>First Name</td>
			<td>Last Name</td>
			<td>Age</td>
			<td>Email</td>
			<td>ID Code</td>
			<td>Phone Number</td>
			<td>Update</td>
			<td>Delete</td>
		</tr>
		<c:forEach var="res" items="${Persona}">
			<tr>
				<th>${res.idPersona}</th>
				<th>${res.nome}</th>
				<th>${res.cognome}</th>
				<th>${res.eta}</th>
				<th>${res.codFiscale}</th>
				<th>${res.email}</th>
				<th>${res.telefono}</th>

				<th><a
					href="${pageContext.request.contextPath}/persona/aggiornaPerIdPersona?idPersona=${res.idPersona}">
						<button type="button">Aggiorna</button>
				</a></th>		
				<th><a
					href="${pageContext.request.contextPath}/persona/eliminaPersona?idPersona=${res.idPersona}">
						<button type="button">Elimina</button>
				</a></th>
			</tr>
		</c:forEach>

	</table>
</body>
</html>