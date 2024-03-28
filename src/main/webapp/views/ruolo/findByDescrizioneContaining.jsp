<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        <td>Id Ruolo</td>
        <td>Description</td>
        <td>Update</td>
        <td>Delete</td>
    </tr>
    <c:forEach var="res" items="${Ruolo}">
        <tr>
            <th>${res.idRuolo}</th>
            <th>${res.descrizione}</th>
            <th><a href="${pageContext.request.contextPath}/ruolo/aggiornaPerIdRuolo?idRuolo=${res.idRuolo}">
                    <button type="button">Aggiorna</button></a></th>
            <th><a href="${pageContext.request.contextPath}/ruolo/eliminaRuolo?idRuolo=${res.idRuolo} &descrizione=${descrizione}">
                    <button type="button">Elimina</button></a></th>
        </tr>
    </c:forEach>
</table>
</body>
</html>