package com.ctr;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.PersonaRepository;

import com.model.Persona;
import com.model.Storico;

@Controller
@RequestMapping
public class PersonaCtr {

	@Autowired
	private PersonaRepository personaRep;
	
//  --------------HOME---------------

	@GetMapping("/home")
	public String vaiAllaHome() {
		return "home"; // views/home.jsp
	}

	
	@GetMapping("/eserciziJavascript")
	public String vaiEserciziJavascript() {
		return "eserciziJavascript"; 
	}
	
	@GetMapping("/eserciziVeicoloJavascript")
	public String vaiEserciziVeicoloJavascript() {
		return "eserciziVeicoloJavascript"; 
	}
	
	
	@GetMapping("/esercizioGarageJavascript")
	public String vaiEsercizioGarageJavascript() {
		return "esercizioGarageJavascript"; 
	}
	
	@GetMapping("/esempioOrto")
	public String vaiEsempioOrto() {
		return "esempioOrto"; 
	}
	
	
//  --------------INSERIMENTO---------------	

	@GetMapping("/persona/preInserimento")
	public String preInserimento() {
		return "persona/inserimentoPersona"; // richiama la pagina jsp, stesso nome
	}

	@PostMapping("/persona/inserimento")
	public String inserimento(Model model, Persona p) {
		personaRep.save(p);
		return "success";	
		}
	

//  --------------RICERCA PER ID---------------

	@GetMapping("/persona/preRicercaIdPersona")
	public String preRicercaIdPersona() {
		return "persona/ricercaIdPersona"; // Nome della pagina jsp per la ricerca di id persona
	}

	@GetMapping("/persona/ricercaIdPersona")
	public String ricercaIdPersona(Model model, @RequestParam int idPersona) {
		Persona p = (Persona) personaRep.findById(idPersona).orElse(null);
		if (p != null) {
			model.addAttribute("idPersona", p);
			return "persona/ricercaByIdPersona";// Nome della pagina jsp per l'aggiornamento della persona
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

	@PostMapping("/persona/ricercaByIdPersona")
	public String ricercaByIdPersona(Persona p) {
		personaRep.save(p);
		return "success"; // richiama la pagina jsp per l'aggiornamento della persona effettiuato
	}
//  --------------AGGIORNA PER ID---------------	

	@GetMapping("/persona/preAggiornaPerIdPersona")
	public String preAggiornaPerIdPersona() {
		return "persona/aggiornaPerIdPersona";
	}

	@GetMapping("/persona/aggiornaPerIdPersona")
	public String aggiornaPerIdPersona(Model model, Integer idPersona) {
		Persona p = (Persona) personaRep.findById(idPersona).orElse(null);
		if (p != null) {
			model.addAttribute("idPersona", p);
			personaRep.save(p);
			return "persona/aggiornaPersona";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

	@PostMapping("/persona/aggiornaPersona")
	public String aggiornaPersona(Model model, Persona p) {
		personaRep.save(p);
		return "success"; // richiama la pagina jsp per l'aggiornamento della persona effettiuato
	}

//  --------------RICERCA PER NOME E COGNOME---------------	

	@GetMapping("/persona/preRicercaPerNomeECognome")
	public String preRicercaPerNomeECognome() {
		return "persona/ricercaPerNomeECognome"; // Nome della pagina jsp per la ricerca di id persona
	}

	@GetMapping("/persona/ricercaPerNomeECognome")
	public String ricercaPerNomeECognome(Model model, @RequestParam String nome, @RequestParam String cognome) {
		List<Persona> res = personaRep.findByNomeECognome(nome, cognome);
		model.addAttribute("Persona", res);
		if (res != null) {
			return "persona/risultatiRicercaPerNomeECognome";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		} // Nome della pagina jsp per l'aggiornamento della persona
	}

//  --------------RICERCA PER NOME---------------	

	@GetMapping("/persona/preRicercaPerNome")
	public String preRicercaPerNome() {
		return "persona/ricercaPerNome";
	}

	@GetMapping("/persona/ricercaPerNome")
	public String ricercaPerNome(Model model, @RequestParam String nome) {
		List<Persona> res = personaRep.findByNome(nome);
		model.addAttribute("Persona", res);
		if (res != null) {
			return "persona/risultatiRicercaPerNome";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

//  --------------RICERCA PER COGNOME---------------	

	@GetMapping("/persona/preRicercaPerCognome")
	public String preRicercaPerCognome() {
		return "persona/ricercaPerCognome";
	}

	@GetMapping("/persona/ricercaPerCognome")
	public String ricercaPerCognome(Model model, @RequestParam String cognome) {
		List<Persona> res = personaRep.findByCognome(cognome);
		model.addAttribute("Persona", res);
		if (res != null) {
			return "persona/risultatiRicercaPerCognome";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

//  --------------RICERCA PER EMAIL---------------	

	@GetMapping("/persona/preRicercaPerEmail")
	public String preRicercaPerEmail() {
		return "persona/ricercaPerEmail";
	}

	@GetMapping("/persona/ricercaPerEmail")
	public String ricercaPerEmail(Model model, @RequestParam String email) {
		List<Persona> res = personaRep.findByEmailContaining(email);
		model.addAttribute("Persona", res);
		if (res != null) {
			return "persona/risultatiRicercaPerEmail";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

//  --------------ELIMINA---------------	

	@GetMapping("/persona/preEliminaPersona")
	public String elimina() {
		return "persona/eliminaPersona";
	}

	@GetMapping("/persona/eliminaPersona")
	public String preEliminaPersona(Model model, Integer idPersona) {
		Persona p = (Persona) personaRep.findById(idPersona).orElse(null);
		if (p != null) {
			personaRep.delete(p);
			return "success";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}
	
//  --------------RICERCA PER STIPENDIO---------------
	
	@GetMapping("/persona/preRicercaPerStipendioPersona")
	public String preRicercaPerStipendioPersona() {
		return "persona/ricercaPerStipendioPersona"; 
	}

	@GetMapping("/persona/ricercaPerStipendioPersona")
	public String ricercaPerStipendioPersona(Model model, int stipendio, Date dataInizio, Date dataFine) {
		List<Storico> res = personaRep.findByStipendioAndDataInizioAfterAndDataFineBefore(stipendio, dataInizio, dataFine);
		model.addAttribute("storico", res);
		model.addAttribute("stipendio", stipendio);
		model.addAttribute("dataInizio", dataInizio);
		model.addAttribute("dataFine", dataFine);
		return "persona/risultatiRicercaPerStipendioPersona";
		}
	
//  --------------RICERCA PER RANGE STIPENDIO ---------------
	
	@GetMapping("/persona/preRicercaStipendioPerRange")
	public String preRicercaStipendioPerRange() {
		return "persona/ricercaStipendioPerRange"; 
	}

	@GetMapping("/persona/ricercaStipendioPerRange")
	public String ricercaStipendioPerRange(Model model, Integer stipendio, Integer minStipendio, Integer maxStipendio) {	
		    List<Storico> res = personaRep.findByStipendioBetween(minStipendio, maxStipendio);
		    model.addAttribute("storico", res);
		    model.addAttribute("stipendio", stipendio);
		    model.addAttribute("minStipendio", minStipendio);
		    model.addAttribute("maxStipendio", maxStipendio);
     	    return "persona/risultatiRicercaStipendioPerRange";	
		}
	
//  --------------ELIMINA PERSONA PER RANGE---------------	

	@GetMapping("/persona/eliminaPersonaRange")
	public String preEliminaPersonaRange(Model model, Integer stipendio, int idPersona, Integer minStipendio, Integer maxStipendio) {
		personaRep.deleteById(idPersona);
		List<Storico> res = personaRep.findByStipendioBetween(minStipendio, maxStipendio);
		model.addAttribute("storico", res);
		model.addAttribute("stipendio", stipendio);
		model.addAttribute("minStipendio", minStipendio);
		model.addAttribute("maxStipendio", maxStipendio);
			return "persona/risultatiRicercaStipendioPerRange";
	}

	
}


