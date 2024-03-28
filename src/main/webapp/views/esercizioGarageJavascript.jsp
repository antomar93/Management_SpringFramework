<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<script>
//Definizione delle classi Veicolo, Bicicletta, Auto e Camion
class Veicolo { 
    constructor(marca, modello, anno) { 
        this.marca = marca;
        this.modello = modello;
        this.anno = anno;
    }

    // Metodo per ottenere informazioni sul veicolo
    displayInfo() {
         return "Marca: " + this.marca + ", Modello: " + this.modello + ", Anno: " + this.anno;
    }
}
 
class Bicicletta extends Veicolo { 
    constructor(marca, modello, anno, tipo) { 
        super(marca, modello, anno); 
        this.tipo = tipo; 
    }

    displayInfo() { 
       return super.displayInfo() + ", " + "Tipo: " + this.tipo;   
    }
}

class Auto extends Veicolo { 
	constructor(marca, modello, anno, chilometraggio) { 
        super(marca, modello, anno); 
        this.chilometraggio = chilometraggio; 
}
	displayInfo() { 
	       return super.displayInfo() + ", " + "Chilometraggio: " + this.chilometraggio;
	    }
	}
	
class Camion extends Veicolo {  
	constructor(marca, modello, anno, capacitaDiCarico) { 
        super(marca, modello, anno);
        this.capacitaDiCarico = capacitaDiCarico; 
}
	displayInfo() { 
	       return super.displayInfo() + ", " + "Capacità di carico: " + this.capacitaDiCarico;
	    }
	}
	
// Creazione delle istanze di bicicletta, auto e camion
let bicicletta = new Bicicletta("Graziella", "GR", 1980, "mountain bike");
let auto = new Auto("Volkswagen", "New Beetle", 2021, 20000);
let camion = new Camion("Ducati", "X54", 2001, "1030 kg");

// Funzione per mostrare il contenuto della classe corrispondente
function mostraContenutoClasse(tipo) {
    let contenutoDiv = document.getElementById("contenutoClasse");

    switch (tipo) {
        case 'bicicletta':
            contenutoDiv.innerText = bicicletta.displayInfo();
            break;
        case 'auto':
            contenutoDiv.innerText = auto.displayInfo();
            break;
        case 'camion':
            contenutoDiv.innerText = camion.displayInfo();
            break;
        default:
            contenutoDiv.innerText = "Veicolo non trovato";
            break;
    }
}

//--------------------- esercizio Officina -------------------------- -->

//Inizializzazione dell'array della lista automobile

let listaAutomobile = [];

//Funzione per aggiungere auto

function aggiungiAutomobile() {
 let nuovoAutomobile = document.getElementById("automobile").value;
 listaAutomobile.push(nuovoAutomobile);
}

function mostraDettagli(automobile) {
 document.getElementById("automobile").value = "";
}

//Funzione per visualizzare gli elementi della lista delle auto nella pagina

function stampaLista() {
 let listaVisualizzata = document.getElementById("listaVisualizzata");
 listaVisualizzata.innerHTML = "";
 let listaHTML = "<ul>";

 for (let elemento of listaAutomobile) {
     listaHTML += "<li>" + elemento + "</li>"; 
 }

 listaHTML += "</ul>";
 listaVisualizzata.innerHTML = listaHTML;
}

//--------------------- esercizio Show/hide -------------------------- -->

function showhide(){
    var div = document.getElementById('myDiv');
    if (div.style.display === 'none') {
        div.style.display = 'block';
    } else {
        div.style.display = 'none';
    }
}
</script>
</head>
<body>
	<!-- --------------------- esercizio Officina -------------------------- -->

	<div class="container">
		<img src="https://media4.giphy.com/media/20NUvxKjMv5YkMykZS/giphy.gif"
			width="200" alt="Road Trip Cat Sticker by Pusheen"> <span>
			GARAGE </span>
	</div>

	<!-- Chiamata della funzione per gestire officina -->

	<form id="listaAutomobile">
		<label for="automobile">Inserisci un auto:</label> <input type="text"
			id="automobile" name="automobile">
		<button type="button" onclick="aggiungiAutomobile()" class="button">Aggiungi!</button>
		<button type="button" onclick="stampaLista()" class="button">Stampa!</button>
	</form>
	<div id="listaVisualizzata"></div>

	<!-- --------------------- esercizio Veicolo -------------------------- -->
	
	
<button onclick="mostraContenutoClasse('bicicletta')">Mostra Bicicletta</button>
<button onclick="mostraContenutoClasse('auto')">Mostra Auto</button>
<button onclick="mostraContenutoClasse('camion')">Mostra Camion</button>

<div id="contenutoClasse"></div>
	
<!-- --------------------- esercizio show/Hide testo-------------------------- -->

	<button onclick="showhide();" id="toggleButton">Show/Hide</button>
<div id="myDiv" style="display: none;">
    This is the content of the div.
</div>	
	
</body>
</html>