<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HOME</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/styleHome.css">
</head>

<body>
	<div class="card">
		<h1>HOME</h1>
		<h2 class="dropdown">PERSONA</h2>
		<div class="dropdown-content">
			<div class="table-container">
				<table>
					<thead>
						<tr>
							<td>Search</td>
							<td>Actions</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th><a
								href="${pageContext.request.contextPath}/persona/preRicercaIdPersona">Persona
									by ID </a> <a
								href="${pageContext.request.contextPath}/persona/preRicercaPerStipendioPersona">By
									Salary</a> <a
								href="${pageContext.request.contextPath}/persona/preRicercaStipendioPerRange">By
									Salary range</a> <a
								href="${pageContext.request.contextPath}/persona/preRicercaPerNomeECognome">By
									First Name and Last Name</a> <a
								href="${pageContext.request.contextPath}/persona/preRicercaPerNome">By
									First Name</a> <a
								href="${pageContext.request.contextPath}/persona/preRicercaPerCognome">By
									Last Name</a> <a
								href="${pageContext.request.contextPath}/persona/preRicercaPerEmail">By
									Email</a></th>
							<th><a
								href="${pageContext.request.contextPath}/persona/preInserimento">Insert
									Persona</a> <a
								href="${pageContext.request.contextPath}/persona/preAggiornaPerIdPersona">Update
									Persona</a> <a
								href="${pageContext.request.contextPath}/persona/preEliminaPersona">Delete
									Persona</a></th>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<h2 class="dropdown" style="background-color:  #ecd2ff;">ROLE</h2>
		<div class="dropdown-content">
			<div class="table-container">
				<table>
					<thead>
						<tr>
							<td>Search</td>
							<td>Actions</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th><a
								href="${pageContext.request.contextPath}/ruolo/preRicercaIdRuolo">Role
									by ID</a> <a
								href="${pageContext.request.contextPath}/ruolo/preFindByDescrizione">Description</a></th>
							<th><a
								href="${pageContext.request.contextPath}/ruolo/preInserimentoRuolo">Insert
									Role</a> <a
								href="${pageContext.request.contextPath}/ruolo/preAggiornaPerIdRuolo">
									Update Role</a> <a
								href="${pageContext.request.contextPath}/ruolo/preEliminaRuolo">Delete
									Role</a></th>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<h2 class="dropdown" style="background-color: #f5e8ff;">HISTORY</h2>
		<div class="dropdown-content">
			<div class="table-container">
				<table>
					<thead>
						<tr>
							<td>Search</td>
							<td>Actions</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th><a
								href="${pageContext.request.contextPath}/storico/preFindByIdPersona">Persona
									by ID</a> <a
								href="${pageContext.request.contextPath}/storico/preRicercaPerStipendio">By
									Salary</a></th>
							<th><a
								href="${pageContext.request.contextPath}/storico/preAggiornaStoricoPerIdStorico">Update
									History</a> <a
								href="${pageContext.request.contextPath}/storico/preEliminaStoricoPerIdStorico">Delete
									History by ID</a></th>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<img
			src="https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExM3F4MjQycmx5cmhjZnFveXNrZ2RveXk5aDdncnAxeXpram1tbzVrOSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/cgzHlhotPqBPesNYyU/giphy.gif"
			alt="Pink Amigos Sticker by Pusheen">
	<a href="www.google.it"
			onMouseover="alert('Hello, welcome in your Gestionale!')" style="font-size: 30px">WELCOME</a>
	
	</div>
	
	<script>
document.addEventListener("DOMContentLoaded", function() {
  document.querySelectorAll('.dropdown').forEach(item => {
    item.addEventListener('click', event => {
      event.target.nextElementSibling.classList.toggle('show');
    });
  });

  window.onclick = function(event) {
    if (!event.target.matches('.dropdown')) {
      var dropdowns = document.getElementsByClassName("dropdown-content");
      for (var i = 0; i < dropdowns.length; i++) {
        var openDropdown = dropdowns[i];
        if (openDropdown.classList.contains('show')) {
          openDropdown.classList.remove('show');
        }
      }
    }
  }
});
</script>

</body>
</html>