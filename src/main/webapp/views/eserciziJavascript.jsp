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

 //---------	esempioArray -------------
var esempio= new Array();
esempio[0] = "primo";
esempio[1]="secondo";
esempio[2]="terzo";
esempio.splice(2,1);
var colori=["bianco","lilla"]
var unione = esempio.concat(colori);
var ciao = [...colori,...unione];

console.log(ciao);

for (var i=0; i++; i<esempio.length){
	console.log(esempio[i]);
}
console.log(esempio);

//---------	esempioData -------------
 var giorno = new Date();
console.log (giorno.getDate());

 //---------	esempioStringhe -------------
var nome ="Chiara, Paola";
var tmp = nome.split(",");
console.log(tmp[0]);
console.log(tmp[1].trim());

 //---------	esempioCostruttore -------------
var studente ={"nome":"Cloe","cognome":"Bianchi"};
studente.nome="Francesco";
console.log(studente);

//------------esercizio stampaArray ------------
var numeri = new Array();
numeri[0]=1;
numeri[1]=2;
numeri[2]=3;
numeri[3]=4;
console.log(numeri);
for(var i=0; i< numeri.length; i++){
	console.log(numeri[3]);
}
 var interi = new Array(1,2,3,4,5,6,7,8,9,10);
 console.log(interi);

//------------esercizio ListaSpesa ------------
 let listaDellaSpesa = ["uova", "banane", "pasta"];
 listaDellaSpesa.splice(1,1);
 listaDellaSpesa.push("pane","latte");
 console.log(listaDellaSpesa);
 
//------------esercizio ListaSpesa2 ------------
 let listaDellaSpesa1 = ["uova", "banane", "pasta"];
 listaDellaSpesa1.push("pane","latte");
 let index = listaDellaSpesa1.indexOf("banane");
 if (index !== -1) {
	    listaDellaSpesa1.splice(index, 1);
	}

	console.log(listaDellaSpesa1);
//------------boolean ------------
	console.log('1' === 1);  // false, perché i tipi sono diversi
	console.log(1 === 1);    // true, perché sia il valore sia il tipo corrispondono

//------------esercizio ListaSpesa3 ------------
function gestisciLista(listaDellaSpesa3) {
    listaDellaSpesa3.push("pane","latte");

    let index = listaDellaSpesa3.indexOf("banane");
    if (index !== -1) {
        listaDellaSpesa3.splice(index, 1);
    }
    console.log(listaDellaSpesa3);
}
//------------esercizio ListaSpesa4 ------------
 
 //Inizializzazione dell'array della lista della spesa
        let listaDellaSpesa4 = [];

        // Funzione per aggiungere un elemento alla lista della spesa
        function aggiungiElemento() {
            let nuovoElemento = document.getElementById("elemento").value;
            listaDellaSpesa4.push(nuovoElemento);
        }

        // Funzione per visualizzare gli elementi della lista della spesa nella pagina
        function stampaLista() {
            let listaVisualizzata = document.getElementById("listaVisualizzata");
            listaVisualizzata.innerHTML = ""; // Pulisco la lista visualizzata

            let listaHTML = "<ul>"; // Creo una lista non ordinata

            for (let elemento of listaDellaSpesa4) {
                listaHTML += "<li>" + elemento + "</li>"; // Aggiungo ogni elemento della lista
            }

            listaHTML += "</ul>"; // Chiudo la lista non ordinata
            listaVisualizzata.innerHTML = listaHTML; // Aggiorno il contenuto della lista visualizzata
        }
  


</script>
</head>
<body>

	<!-- ------------------ esercizio ListaSpesa4 ------------ -->

	<div class="container">
		<img src="https://media1.giphy.com/media/9boRjYZMIeb6D7SVYf/giphy.gif"
			width="200" alt="Hungry Cat Sticker by Pusheen"> <span>SPESA</span>
	</div>
	<!--      Form per aggiungere e stampare gli elementi della lista della spesa -->

	<form id="listaDellaSpesa">
		<label for="elemento">Inserisci un elemento:</label> <input
			type="text" id="elemento" name="elemento">
		<button type="button" onclick="aggiungiElemento()" class="button">Aggiungi!</button>
		<button type="button" onclick="stampaLista()" class="button">Stampa!</button>
	</form>
	<!--     Elemento HTML per visualizzare la lista della spesa -->
	<div id="listaVisualizzata"></div>


	

</body>
</html>