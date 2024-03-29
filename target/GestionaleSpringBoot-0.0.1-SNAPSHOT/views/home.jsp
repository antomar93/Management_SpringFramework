<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
	background-color: #fbfdfa;
}

h1 {
	text-align: center;
	padding: 50px; /* Aumentato padding per coprire l'intero display */
	margin-bottom: 15px;
	background-color: #d8a4ff; /* Lilla più scuro per evidenziare Home */
	color: #fff;
	width: 100%; /* Larghezza massima */
}

h2 {
	text-align: center;
	background-color: #c3a9ff; /* Lilla chiaro per sezione */
	padding: 15px;
	color: #fff;
	width: 70%; /* Larghezza uguale all'immagine */
	max-width: 500px; /* Larghezza massima */
}

a {
	display: block;
	margin: 10px auto 5px; /* Ridotto margine inferiore */
	text-align: center;
	text-decoration: none;
	color: #555; /* Colore testo più scuro */
	background-color: #f8f8f8; /* Colore di sfondo più chiaro */
	padding: 15px;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	transition: background-color 0.3s ease;
	width: 70%;
	max-width: 500px; /* Larghezza massima per i link */
	font-weight: bold; /* Scritta in grassetto */
}

a:hover {
	background-color: #d0d0d0;
	/* Colore di sfondo più scuro al passaggio del mouse */
}

img {
	display: block;
	margin: 0 auto;
	width: 70%; /* Larghezza massima */
	max-width: 300px; /* Larghezza massima */
	height: auto;
}
</style>
</head>
<body>

	<img
		src="https://media1.tenor.com/m/WJpsEmKy5QAAAAAC/congrats-happy.gif"
		width="433" height="441"
		alt="Congrats Happy GIF - Congrats Happy Yayy GIFs"
		style="max-width: 500px;">

	<h1>Home</h1>

	<h2>Operazioni Persona</h2>

	<a href="${pageContext.request.contextPath}/PersonaCtr/preInserimento">Insert
		Persona</a>
	<a href="${pageContext.request.contextPath}/PersonaCtr/findIdPersona">
		Search by IdPersona</a>
	<a
		href="${pageContext.request.contextPath}/PersonaCtr/preRicercaPerIdPersona">
		Update Persona</a>
	<a
		href="${pageContext.request.contextPath}/PersonaCtr/preRicercaPerNomeECognome">
		Search by Name and Surname</a>
	<a
		href="${pageContext.request.contextPath}/PersonaCtr/preRicercaPerNome">
		Search by Name</a>
	<a
		href="${pageContext.request.contextPath}/PersonaCtr/preEliminaPersona">
		Delete Persona</a>

</body>
</html>