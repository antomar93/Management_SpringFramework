<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Ruolo"%>
<%@ page import="com.ctr.RuoloCtr"%>
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
    <span>YOUR ROLE</span>
</div>
<%Ruolo r =(Ruolo)request.getAttribute("idRuolo"); %>

<form action="${pageContext.request.contextPath}/ruolo/ricercaByIdRuolo" method="POST">
<table><tr>
<td>ID Ruolo</td>
<th><input type="text" id="idRuolo" name="idRuolo" value="<%=request.getParameter("idRuolo")%>"readonly></input></th>
</tr>
<tr><td>Description:</td>
<th><input type="text" id="descrizione" name="descrizione" value="<%=r.getDescrizione()%>"readonly></input></th>
</tr></table>
<br>
<a href="${pageContext.request.contextPath}/home"><button type="button">Home</button></a>
   
</form>
</body>
</html>