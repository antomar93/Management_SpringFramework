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
			<td>Id Storico</td>
			<td>Id Persona</td>
			<td>First Name</td>
			<td>Last Name</td>
			<td>Id Ruolo</td>
			<td>Description</td>
			<td>Start Date</td>
			<td>End Date</td>
			<td>Update</td>
			<td>Delete</td>
		</tr>
		<c:forEach var="res" items="${storico}">
			<tr>
				<th>${res.idStorico}</th>
				<th>${res.getPersonaCollegata().getIdPersona()}</th>
				<th>${res.getPersonaCollegata().getNome()}</th>
				<th>${res.getPersonaCollegata().getCognome()}</th>
				<th>${res.getRuoloCollegato().getIdRuolo()}</th>
				<th>${res.getRuoloCollegato().getDescrizione()}</th>
				<th>${res.dataInizio}</th>
				<th>${res.dataFine}</th>
				
            <th> <a href="${pageContext.request.contextPath}/storico/aggiornaStoricoPerIdStorico?idStorico=${res.getIdStorico()}">  
            <button type="button">Update</button></a></th>
            <th> <a href="${pageContext.request.contextPath}/storico/eliminaStoricoPerIdPersona?idStorico=${res.idStorico}&idPersona=${idPersona}">  
            <button type="button">Delete</button></a></th>
        </tr>
		</c:forEach>

	</table>
</body>
</html>