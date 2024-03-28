package com.ctr;

import java.sql.Date;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.PersonaRepository;
import com.dao.RuoloRepository;
import com.dao.StoricoRepository;
import com.model.Persona;
import com.model.Storico;
import com.model.Ruolo;

@Controller
@RequestMapping
public class StoricoCtr {
	
	@Autowired
	private StoricoRepository storicoRep;
	@Autowired
	private PersonaRepository personaRep;
	@Autowired
	private RuoloRepository ruoloRep;
	
//  --------------RICERCA PER ID PERSONA---------------

	@GetMapping("/storico/preFindByIdPersona")
	public String preFindByIdPersona() {
		return "storico/findByIdPersona"; 
	}

	@GetMapping("/storico/findByIdPersona")
	public String findByIdPersona(Model model, int idPersona) {
		List<Storico> res = storicoRep.findByIdPersonaOrderByDataInizio(idPersona);
		Collections.sort(res, Comparator.comparing(Storico::getDataInizio));
		model.addAttribute("storico", res);
		model.addAttribute("idPersona", idPersona);
		if (res != null) {
			return "storico/risultatiFindByIdPersona";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}	
	}
//  ----------------- ELIMINA PER ID PERSONA -----------------	
	
	@GetMapping("/storico/eliminaStoricoPerIdPersona")
	public String eliminaStoricoPerIdPersona (Model model, Integer idPersona, Integer idStorico) {
		storicoRep.deleteById(idStorico);
		List<Storico> res = storicoRep.findByIdPersona(idPersona);
		model.addAttribute("storico", res);
		return "storico/risultatiFindByIdPersona";
	}
	
//  ----------------- ELIMINA PERSONA PER ID STORICO P  -----------------	
	
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
	@GetMapping("/storico/eliminaStoricoPerIdStoricop")
	public String eliminaStoricoPerIdStoricop (Model model, Integer idStorico, Integer idPersona) {
		storicoRep.deleteById(idStorico);	
		return aggiornaPerIdPersona(model,idPersona);
	}
	
//  ----------------- AGGIORNA -----------------

	@GetMapping("/storico/preAggiornaStoricoPerIdStorico")
	public String preAggiornaStoricoPerIdStorico() {
		return "storico/aggiornaStoricoPerIdStorico";
	}
	
	@GetMapping("/storico/aggiornaStoricoPerIdStorico")
	public String aggiornaStoricoPerIdPersona (Model model, Integer idStorico) {
		Storico s = storicoRep.findById(idStorico).get();
		List<Persona> res = personaRep.findAll();
		List<Ruolo> r = ruoloRep.findAll();
		model.addAttribute("storico",s);
		model.addAttribute("listaPersone", res);
		model.addAttribute("listaRuoli", r);
		return "storico/aggiornaStorico";
	}
	@PostMapping("/storico/aggiornaStorico")
	public String aggiornaStorico(Model model, Storico s) {
		storicoRep.save(s);
		return "success"; 
	}
	
//  ------------------ ELIMINA --------------------
	
	@GetMapping("/storico/preEliminaStoricoPerIdStorico")
	public String preEliminaStoricoPerIdStorico() {
		return "storico/eliminaStoricoPerIdStorico";
	}
	
	@GetMapping("/storico/eliminaStoricoPerIdStorico")
	public String eliminaStoricoPerIdStorico (Model model, int idStorico) {
		storicoRep.deleteById(idStorico);
		List<Storico> res = storicoRep.findByIdPersona(idStorico);
		model.addAttribute("storico", res);
		return "success";
	}
	
//  --------------RICERCA PER STIPENDIO---------------
	
	@GetMapping("/storico/preRicercaPerStipendio")
	public String preRicercaPerStipendio() {
		return "storico/ricercaPerStipendio"; 
	}

	@GetMapping("/storico/ricercaPerStipendio")
	public String ricercaPerStipendio(Model model, int stipendio, Date dataInizio, Date dataFine) {
		List<Storico> res = storicoRep.findByStipendioAndDataInizioAfterAndDataFineBefore(stipendio, dataInizio, dataFine);
		model.addAttribute("storico", res);
		model.addAttribute("stipendio", stipendio);
		model.addAttribute("dataInizio", dataInizio);
		model.addAttribute("dataFine", dataFine);
		return "storico/risultatiRicercaPerStipendio";
	
	}
//  ----------------- ELIMINA PER STIPENDIO -----------------	
	
	@GetMapping("/storico/eliminaStoricoPerStipendio")
	public String eliminaStoricoPerStipendio (Model model, Integer stipendio, int idStorico,Date dataInizio, Date dataFine) {
		storicoRep.deleteById(idStorico);
		List<Storico> res = storicoRep.findByStipendioAndDataInizioAfterAndDataFineBefore(stipendio, dataInizio, dataFine);
		model.addAttribute("storico", res);
		model.addAttribute("stipendio", stipendio);
		model.addAttribute("dataInizio", dataInizio);
		model.addAttribute("dataFine", dataFine);
		return "storico/risultatiRicercaPerStipendio";
	}
//  ----------------- ELIMINA PER RANGE STIPENDIO -----------------	
	
	@GetMapping("/storico/eliminaStoricoPerRangeStipendio")
	public String eliminaStoricoPerRangeStipendio (Model model, Integer stipendio, int idStorico, Integer minStipendio, Integer maxStipendio) {
		storicoRep.deleteById(idStorico);
		List<Storico> res = storicoRep.findByStipendioBetween(minStipendio, maxStipendio);
		model.addAttribute("storico", res);
		model.addAttribute("stipendio", stipendio);
		model.addAttribute("minStipendio", minStipendio);
		model.addAttribute("maxStipendio", maxStipendio);
		return "persona/risultatiRicercaStipendioPerRange";
	}
}
