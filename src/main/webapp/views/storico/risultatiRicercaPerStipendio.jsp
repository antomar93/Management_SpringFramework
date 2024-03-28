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
			<th>Historical ID</th>
			<th>ID Persona</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>ID Role</th>
			<th>Description</th>
			<th>Salary</th>
			<th>Start Date</th>
			<th>End Date</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="res" items="${storico}">
			<tr>
				<td>${res.idStorico}</td>
				<td>${res.getPersonaCollegata().getIdPersona()}</td>
				<td>${res.getPersonaCollegata().getNome()}</td>
				<td>${res.getPersonaCollegata().getCognome()}</td>
				<td>${res.getRuoloCollegato().getIdRuolo()}</td>
				<td>${res.getRuoloCollegato().getDescrizione()}</td>
				<td>${res.getRuoloCollegato().getStipendio()}</td>
				<td>${res.dataInizio}</td>
				<td>${res.dataFine}</td>
				
            <td> <a href="${pageContext.request.contextPath}/storico/aggiornaStoricoPerIdStorico?idStorico=${res.getIdStorico()}">  
            <button type="button">Update</button></a></td>
            <td> <a href="${pageContext.request.contextPath}/storico/eliminaStoricoPerStipendio?stipendio=${stipendio}&idStorico=${res.idStorico}&dataInizio=${res.dataInizio}&dataFine=${res.dataFine}">  
            <button type="button">Delete</button></a></td>
        </tr>
		</c:forEach>

	</table>
</body>
</html>