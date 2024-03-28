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
    <img src="https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExdG14M3Vrd2draG80NGYzbHF2dzlycjk3bnJ6djJwYXFteTdqejVleiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/zf0viG3j3QGEdYMa1Z/giphy.gif" width="200" alt="Working Work From Home Sticker by Pusheen">
    <span>SEARCH YOUR DATA</span>
</div>
  <form action="/persona/ricercaStipendioPerRange" method= "GET">
  <table>
  <tr>
    <td>Salary min:</td>
    <th><input type="number" id="minStipendio" name="minStipendio" value="<%=request.getParameter("minStipendio") %>"></th>
    </tr><td>Salary max:</td>
    <th><input type="number" id="maxStipendio" name="maxStipendio" value="<%=request.getParameter("maxStipendio") %>" ></th>
</table>
    <table>
		<tr> <h4>Select:</h4>
		</tr>
		<tr>
		<th><input type="submit" value="submit"></th>
		<th><input type="reset" value="Reset"></th></tr></table>

    </form>
</body>
</html>