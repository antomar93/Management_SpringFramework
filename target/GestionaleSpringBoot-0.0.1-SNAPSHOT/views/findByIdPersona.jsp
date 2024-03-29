<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Persona"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>

form, h2 {
	font-family: poppins, sans-serif;
	padding: 20px;
}

input[type=text], select {
	width: 30%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=number], select {
	width: 30%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}


div {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}
</style>

<body>

<c:set var="persona" value="${idPersona}" />

<div>
    <h2>Persona Details</h2>
    <form>
        <label for="IdPersona">ID:</label><br>
        <input type="text" id="IdPersona" name="IdPersona" value="${persona.id}" readonly><br>
        
        <label for="nome">First Name:</label><br> 
        <input type="text" id="nome" name="nome" value="${persona.nome}" readonly><br>
        
        <label for="cognome">Last Name:</label><br>
        <input type="text" id="cognome" name="cognome" value="${persona.cognome}" readonly><br>
        
        <label for="eta">Age:</label><br>
        <input type="text" id="eta" name="eta" value="${persona.eta}" readonly><br>
        
        <label for="codFiscale">ID Code:</label><br>
        <input type="text" id="codFiscale" name="codFiscale" value="${persona.codFiscale}" readonly><br>
        
        <label for="email">Email:</label><br>
        <input type="text" id="email" name="email" value="${persona.email}" readonly><br>
        
        <label for="telefono">Phone number:</label><br>
        <input type="text" id="telefono" name="telefono" value="${persona.telefono}" readonly><br>
    </form>
    
</div>
</body>
</html>