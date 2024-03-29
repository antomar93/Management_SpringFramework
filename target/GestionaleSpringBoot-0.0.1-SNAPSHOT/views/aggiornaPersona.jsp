<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Persona"%>
<%@ page import="com.ctr.PersonaCtr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
 table {
            border-spacing: 0;
            border-collapse: collapse;
            width: 100%;
            margin-bottom: 20px;
        }
        
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #c3a9ff;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        td:first-child,
        th:first-child {
            border-left: 1px solid #dddddd;
        }

        td:last-child,
        th:last-child {
            border-right: 1px solid #dddddd;
        }

        th:first-child,
        th:last-child {
            border-right: 1px solid #dddddd;
        }

        thead th {
            border-bottom: 2px solid #dddddd;
        }

        tbody td {
            border-bottom: 1px solid #dddddd;
        }
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

input[type=submit] {
	width: 30%;
	background-color: #a38cff;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit] {
	font-family: poppins, sans-serif;
}

input[type=submit]:hover {
	background-color: #c3a9ff;
}
input[type=reset] {
	width: 30%;
	background-color: #a38cff;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=reset] {
	font-family: poppins, sans-serif;
}

input[type=reset]:hover {
	background-color: #c3a9ff;
}

div {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}
</style>

<body>

<%	Persona p = (Persona) request.getAttribute("idPersona"); %>

<form action="${pageContext.request.contextPath}/PersonaCtr/aggiornaPersona" method= "POST">  

<h2>Update Persona</h2>

<input type="text" id="IdPersona" name="IdPersona" value="<%=request.getParameter("idPersona")%>"readonly><br>
<label for="name">First name:</label><br> 
<input type="text" id="nome" name="nome" value =" <%= p.getNome() %>"><br>
<label for="name">Last name:</label><br>
<input type="text" id="cognome" name="cognome" value =" <%= p.getCognome() %>"><br>
<label for="name">Age:</label><br>
<input type="text" id="eta" name="eta" value =" <%= p.getEta() %>"><br>
<label for="name">Id Code:</label><br>
<input type="text" id="codFiscale" name="codFiscale" value =" <%= p.getCodFiscale() %>"><br>
<label for="name">Email:</label><br>
<input type="text" id="email" name="email" value =" <%= p.getEmail() %>"><br>
<label for="name">Phone number:</label><br>
<input type="text" id="telefono" name="telefono" value =" <%= p.getTelefono()%>"><br>
<br>
<input type="submit" value="Submit">
<br>
<input type="reset" value="Reset">



</form>