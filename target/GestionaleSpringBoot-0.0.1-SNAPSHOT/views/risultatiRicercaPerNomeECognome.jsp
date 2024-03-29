<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.model.Persona"%>
<%@ page import="com.ctr.PersonaCtr"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #577590;
	text-align: center;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f3dcfa;
}

button {
	width: 80%;
	margin: 1px 0;
	padding: 14px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-family: 'Poppins', sans-serif;
	font-size: 16px;
	font-weight: bold;
	text-transform: uppercase;
	background-color: #f3dcfa;
	transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
}

button:hover {
	background-color: #f3dcfa;
	/* Cambia il colore quando si passa sopra con il mouse */
	color: #8968e0;
}
</style>

<title>Ricerca per Nome e Cognome</title>
</head>
<body>
	<table>
		<tr>
			<th>Id Persona</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Age</th>
			<th>Email</th>
			<th>ID Code</th>
			<th>Phone Number</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="res" items="${Persona}">
			<tr>
				<td>${res.idPersona}</td>
				<td>${res.nome}</td>
				<td>${res.cognome}</td>
				<td>${res.eta}</td>
				<td>${res.codFiscale}</td>
				<td>${res.email}</td>
				<td>${res.telefono}</td>

				<td><a
					href="${pageContext.request.contextPath}/PersonaCtr/ricercaPerIdPersona?idPersona=${res.idPersona}">
						<button type="button">Aggiorna</button>
				</a></td>		
				<td><a
					href="${pageContext.request.contextPath}/PersonaCtr/eliminaPersona?idPersona=${res.idPersona}">
						<button type="button">Elimina</button>
				</a></td>
			</tr>
		</c:forEach>

	</table>
</body>