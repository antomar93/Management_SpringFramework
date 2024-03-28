<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <img src="https://media0.giphy.com/media/9oa3sE4IdWbqO61WGT/giphy.gif" width="200" alt="Tired Work Sticker by Pusheen">
    <span>INSERT NEW PERSON</span>
</div>
  <form action="${pageContext.request.contextPath}/persona/inserimento" method= "POST">
  <table>
   <tr> 
   <td>First name:</td>
   <td>Last name:</td>
   <td>Age:</td>
   <td>ID cod:</td>
   <td>Email:</td>
   <td>Phone Number:</td>
  
</tr><tr>
     <th> <input type="text" id="nome" name="nome"></th>
     <th> <input type="text" id="cognome" name="cognome"></th>
     <th> <input type="number" id="eta" name="eta"></th>
     <th> <input type="text" id="codFiscale" name="codFiscale"></th>
     <th> <input type="text" id="email" name="email"></th>
     <th> <input type="number" id="telefono" name="telefono"></th>
</tr></table>
    <h4>Select</h4>
<table>
<tr>
<th><input type="submit" value="Submit">
</th>
<th><input type="reset" value="Reset"></th>
</tr>
</table>
  </form>

</body>
</html>