package com.ctr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.RuoloRepository;
import com.model.Ruolo;


@Controller
@RequestMapping
public class RuoloCtr {

	@Autowired
	private RuoloRepository ruoloRep;

//  --------------INSERIMENTO---------------	

	@GetMapping("/ruolo/preInserimentoRuolo")
	public String preInserimentoRuolo() {
		return "ruolo/inserimentoRuolo";
	}

	@PostMapping("/ruolo/inserimentoRuolo")
	public String inserimentoRuolo(Model model, Ruolo r) {
		ruoloRep.save(r);
		if (r != null) {
			return "success";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}
	
//  --------------RICERCA PER ID RUOLO---------------

	@GetMapping("/ruolo/preRicercaIdRuolo")
	public String preRicercaIdRuolo() {
		return "ruolo/ricercaIdRuolo";
	}

	@GetMapping("/ruolo/ricercaIdRuolo")
	public String ricercaIdRuolo(Model model, @RequestParam int idRuolo) {
		Ruolo r = (Ruolo) ruoloRep.findById(idRuolo).orElse(null);
		if (r != null) {
			model.addAttribute("idRuolo", r);
			return "ruolo/ricercaByIdRuolo";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}
	@PostMapping("/ricercaByIdRuolo")
	public String ricercaByIdRuolo(Ruolo r) {
		ruoloRep.save(r);
		return "success"; 
	}
	
//  --------------RICERCA PER DESCRIZIONE---------------	

	@GetMapping("/ruolo/preFindByDescrizione")
	public String preFindByDescrizione() {
		return"ruolo/findByDescrizione";
	}

	@GetMapping("/ruolo/findByDescrizione")
	public String findByDescrizione(Model model, String descrizione) {
		List<Ruolo> res= ruoloRep.findByDescrizioneContainingOrderByIdRuolo(descrizione);
		model.addAttribute("descrizione",descrizione);
		model.addAttribute("Ruolo", res);
		if (res != null) {
			return"ruolo/findByDescrizioneContaining";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}
	
	@GetMapping("/ruolo/eliminaRuolo")
	public String eliminaRuolo (Model model, int idRuolo, String descrizione) {
		ruoloRep.deleteById(idRuolo);
		List<Ruolo> res =ruoloRep.findByDescrizioneContainingOrderByIdRuolo(descrizione);
		model.addAttribute("Ruolo",res);
		return "ruolo/findByDescrizioneContaining";

	}
	
//  --------------AGGIORNA PER ID---------------	

	@GetMapping("/ruolo/preAggiornaPerIdRuolo")
	public String preAggiornaPerIdRuolo() {
		return "ruolo/aggiornaPerIdRuolo";
	}

	@GetMapping("/ruolo/aggiornaPerIdRuolo")
	public String aggiornaPerIdRuolo(Model model, @RequestParam int idRuolo) {
		Ruolo r = (Ruolo) ruoloRep.findById(idRuolo).orElse(null);
		if (r != null) {
			model.addAttribute("idRuolo", r);
			return "ruolo/aggiornaRuolo";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

	@PostMapping("/ruolo/aggiornaRuolo")
	public String aggiornaRuolo(Model model, Ruolo r) {
		ruoloRep.save(r);
		return "success"; // richiama la pagina jsp per l'aggiornamento della persona effettiuato
	}
	
//  --------------ELIMINA---------------	

	@GetMapping("/ruolo/preEliminaRuolo")
	public String elimina() {
		return "ruolo/eliminaRuolo2";
	}
	

	@GetMapping("/ruolo/eliminaRuolo2")
	public String preEliminaRuolo(Model model, @RequestParam int idRuolo) {
		Ruolo r = (Ruolo) ruoloRep.findById(idRuolo).orElse(null);
		if (r != null) {
			ruoloRep.delete(r);
			return "success";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}
}
