<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Veicoli</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<script>
    // Definizione della classe Veicolo
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

    // Definizione delle classi derivate Bicicletta, Auto e Camion
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
            return super.displayInfo() + ", " + "Capacità Di Carico: " + this.capacitaDiCarico;
        }
    }

    // Creazione delle istanze di bicicletta, auto e camion
    let listaVeicoli = [];

    // Funzione per aggiungere un veicolo alla lista
    function aggiungiVeicolo(veicolo) {
        listaVeicoli.push(veicolo);
    }

  
    // Funzione per mostrare la lista dei veicoli
    function mostraListaVeicoli() {
        let listaVisualizzataDiv = document.getElementById("listaVisualizzata");
        listaVisualizzataDiv.innerHTML = "<h2>Lista Veicoli:</h2><ul>";

        for (let veicolo of listaVeicoli) {
            listaVisualizzataDiv.innerHTML += "<li>" + veicolo.displayInfo() + "</li>";
        }

        listaVisualizzataDiv.innerHTML += "</ul>";
    }

    // Funzione per mostrare il form per l'inserimento dei dati del veicolo
    function mostraFormVeicolo(tipoVeicolo) {
        let formDiv = document.getElementById("formInserimentoVeicolo");
        formDiv.innerHTML = "";

        let formHTML = "<h3>Inserisci dati del veicolo:</h3>";
        formHTML += "<table><td>Marca:</td> <th><input type='text' id='marca' name='marca'></th><br>";
        formHTML += "<td>Modello:</td> <th><input type='text' id='modello' name='modello'></th><br>";
        formHTML += "<td>Anno:</td> <th><input type='text' id='anno' name='anno'></th><br>";

        if (tipoVeicolo === 'auto') {
            formHTML += "<td>Chilometraggio:</td> <th> <input type='text' id='chilometraggio' name='chilometraggio'></th><br>";
        } else if (tipoVeicolo === 'camion') {
            formHTML += "<td>Capacità Di Carico:</td> <th> <input type='text' id='capacitaDiCarico' name='capacitaDiCarico'></th><br>";
        } else if (tipoVeicolo === 'bicicletta') {
            formHTML += "<td>Tipo:</td> <th><input type='text' id='tipo' name='tipo'></th><br>";
        }
        formHTML += "<td><button onclick='inserisciVeicolo(\"" + tipoVeicolo + "\")'>Inserisci</button></td></table>";
        formDiv.innerHTML = formHTML;  
    }

    // Funzione per inserire un veicolo nella lista
    
    function inserisciVeicolo(tipoVeicolo) {
        let marca = document.getElementById("marca").value;
        let modello = document.getElementById("modello").value;
        let anno = document.getElementById("anno").value;

        if (tipoVeicolo === 'auto') {
            let chilometraggio = document.getElementById("chilometraggio").value;
            aggiungiVeicolo(new Auto(marca, modello, anno, chilometraggio));
        } else if (tipoVeicolo === 'camion') {
            let capacitaDiCarico = document.getElementById("capacitaDiCarico").value;
            aggiungiVeicolo(new Camion(marca, modello, anno, capacitaDiCarico));
        } else if (tipoVeicolo === 'bicicletta') {
            let tipo = document.getElementById("tipo").value;
            aggiungiVeicolo(new Bicicletta(marca, modello, anno, tipo));
        }

        // Mostra messaggio di successo
        alert("Veicolo inserito con successo!");

        // Nascondi il form dopo l'inserimento
        document.getElementById("formInserimentoVeicolo").innerHTML = "";
    }
    
</script>
</head>
<body>

	<div class="container">
		<img src="https://media4.giphy.com/media/20NUvxKjMv5YkMykZS/giphy.gif"
			width="200" alt="Road Trip Cat Sticker by Pusheen"> <span>
			GARAGE </span>
	</div>
    <!-- Pulsanti per mostrare il form di inserimento dei veicoli -->
   <table><th><button onclick="mostraFormVeicolo('auto')">Aggiungi Auto</button></th>
   <th> <button onclick="mostraFormVeicolo('camion')">Aggiungi Camion</button></th>
   <th> <button onclick="mostraFormVeicolo('bicicletta')">Aggiungi Bicicletta</button></th></table> 

    <!-- Form per l'inserimento dei dati del veicolo -->
    <div id="formInserimentoVeicolo"></div>

    <!-- Pulsante per mostrare la lista dei veicoli -->
   <table> <th> <button onclick="mostraListaVeicoli()">Mostra Lista Veicoli</button>


    <!-- Contenitore per visualizzare la lista dei veicoli -->
    <div id="listaVisualizzata"></div></th></table> 
</body>
</html>