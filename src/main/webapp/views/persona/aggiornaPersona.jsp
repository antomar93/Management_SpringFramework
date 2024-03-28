<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.model.Persona"%>
<%@ page import="com.model.Storico"%>
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
<%	Persona p = (Persona) request.getAttribute("idPersona");%>

<form action="${pageContext.request.contextPath}/persona/aggiornaPersona" method= "POST">  

<h2>Update Persona</h2>
<table>
<tr>
<td>Id Persona:</td>
<td>First name:</td> 
<td>Last name:</td>
<td>Age:</td>
<td>Id Code:</td>
<td>Email:</td>
<td>Phone number:</td>

<tr>
<th><input type="number" id="IdPersona" name="IdPersona" value="<%=request.getParameter("idPersona")%>"readonly>
</th>
<th><input type="text" id="nome" name="nome" value ="<%=p.getNome()%>">
</th>
<th><input type="text" id="cognome" name="cognome" value ="<%=p.getCognome()%>">
</th>
<th><input type="number" id="eta" name="eta" value ="<%=p.getEta()%>"><br>
</th>
<th><input type="text" id="codFiscale" name="codFiscale" value ="<%=p.getCodFiscale()%>">
</th>
<th><input type="text" id="email" name="email" value ="<%=p.getEmail()%>">
</th>
<th><input type="number" id="telefono" name="telefono" value ="<%=p.getTelefono()%>"></th>
<tr>
</table>
<%
    if (p.getListaStorici() != null && !p.getListaStorici().isEmpty()) {
    	  for (Storico storico : p.getListaStorici()){
%>
<h3>Persona Data History</h3>
<table>
<tr>
<td>Role:</td>
<td>Salary:</td>
<td>Start Date:</td>
<td>End Date:</td>
<td>Update:</td>
<td>Delete:</td>
</tr>
<tr>
<th><input type="text" id="descrizione" name="descrizione" value="<%= storico.getRuoloCollegato().getDescrizione() %>" readonly>
</th>
<th><input type="number" id="stipendio" name="stipendio" value="<%= storico.getRuoloCollegato().getStipendio() %>" readonly>
</th>
<th><input type="date" id="dataInizio" name="dataInizio" value="<%= storico.getDataInizio() %>" readonly>
</th>
<th><input type="date" id="dataFine" name="dataFine" value="<%= storico.getDataFine() %>" readonly>
</th>
<th> <a href="${pageContext.request.contextPath}/storico/aggiornaStoricoPerIdStorico?idStorico=<%= storico.getIdStorico() %>">  
<button type="button">Update</button></a></th>
<th><a href="${pageContext.request.contextPath}/storico/eliminaStoricoPerIdStoricop?idStorico=<%= storico.getIdStorico() %>&idPersona=<%=request.getParameter("idPersona")%>">
<button type="button">Delete</button>
</a></th>
</tr>
</table>
<%
	}
}
%>
<h4>Select</h4>
<table>
<tr>
<th><input type="submit" value="Submit">
</th>
<th><input type="reset" value="Reset"></th>
</tr>
</table>
</form>