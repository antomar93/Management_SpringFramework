<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.model.Persona"%>

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
		    <td>Id Storico</td>
			<td>Id Persona</td>
			<td>First Name</td>
			<td>Last Name</td>
			<td colspan="2">Role</td>
			<td colspan="2">Contacts</td>
			<td>Update</th>
			<td>Delete Persona</td>
			<td>Delete Storico</td>
		</tr>
		<c:forEach var="res" items="${storico}">
			<tr>
			    <th>${res.getPersonaCollegata().getIdPersona()}</th>
				<th>${res.getPersonaCollegata().getIdPersona()}</th>
				<th>${res.getPersonaCollegata().getNome()}</th>
				<th>${res.getPersonaCollegata().getCognome()}</th>
				<th rowspan="1">${res.getRuoloCollegato().getDescrizione()}</th>
			    <th rowspan="1">${res.getRuoloCollegato().getStipendio()} euro</th>
				<th rowspan="1">${res.getPersonaCollegata().getEmail()} </th>
                <th rowspan="1">${res.getPersonaCollegata().getTelefono()}</th>
				<th><a
					href="${pageContext.request.contextPath}/persona/aggiornaPerIdPersona?idPersona=${res.getPersonaCollegata().getIdPersona()}">
						<button type="button">Update</button>
				</a></th>		
				<th><a
					href="${pageContext.request.contextPath}/persona/eliminaPersonaRange?idPersona=${res.getPersonaCollegata().getIdPersona()}&minStipendio=${minStipendio}&maxStipendio=${maxStipendio}">
						<button type="button">Delete</button>
				</a></th>
				<th><a
					href="${pageContext.request.contextPath}/storico/eliminaStoricoPerRangeStipendio?idStorico=${res.idStorico}&minStipendio=${minStipendio}&maxStipendio=${maxStipendio}">
						<button type="button">Delete</button>
				</a></th>
			</tr>
		</c:forEach>

	</table>
	</body>
</html>