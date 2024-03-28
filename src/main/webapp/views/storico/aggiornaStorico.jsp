<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Storico"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My Page</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
	<div class="container">
		<img
			src="https://media1.giphy.com/media/4oRILGMNjVlWpbtMxJ/giphy.gif?cid=ecf05e477lkvmqbi2oxw6yxjdo7a2m8uhbccggvdbapi8j1o&ep=v1_gifs_related&rid=giphy.gif&ct=s"
			width="200" alt="Working Work From Home Sticker by Pusheen"> <span>UPDATE
			YOUR DATA</span>
	</div>
	<%
	Storico s = (Storico) request.getAttribute("storico");
	%>

	<form
		action="${pageContext.request.contextPath}/storico/aggiornaStorico"
		method="POST">

		<h2>Update Storico</h2>
		<table>
			<td>ID History</td>
			<th><input type="number" id="idStorico" name="idStorico"
				value="<%=request.getParameter("idStorico")%>" readonly></th>
		</table>
		<table>
			<tr>
				<td>ID Persona:</td>
				<td>ID Role:
				</th>
			</tr>
			<tr>
				<th><select name="personaCollegata.idPersona">
						<c:forEach var="p" items="${listaPersone}">
							<option value="${p.idPersona}">${p.nome}${p.cognome} -
								${p.codFiscale}</option>
						</c:forEach>
				</select></th>
				<th><select name="ruoloCollegato.idRuolo">
						<c:forEach var="r" items="${listaRuoli}">
							<option value="${r.idRuolo}">${r.descrizione}-
								${r.stipendio} euro</option>
						</c:forEach>
				</select></th>
			<tr>
				<td>Start Date:</td>
				<td>End Date:</td>
			</tr>
			<tr>
				<th><input type="date" id="dataInizio" name="dataInizio"
					value="<%=s.getDataInizio()%>"></th>
				<th><input type="date" id="dataFine" name="dataFine"
					value="<%=s.getDataFine()%>"></th>
			</tr>
		</table>

		<table>
			<tr>
				<h4>Select:</h4>
			</tr>
			<tr>
				<th><input type="submit" value="submit"></th>
				<th><input type="reset" value="Reset"></th>
			</tr>
		</table>

	</form>
</body>
</html>