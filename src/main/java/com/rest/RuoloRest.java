package com.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.RuoloRepository;
import com.model.Ruolo;

@RestController
@RequestMapping("Ruolo")

public class RuoloRest {

	@Autowired
	private RuoloRepository ruoloRep;

	@GetMapping("findByDescrizione/{descrizione}")
	public List<Ruolo> findByDescrizione(@PathVariable("descrizione") String descrizione) {
		return ruoloRep.findByDescrizione(descrizione);
	}

	@GetMapping("findByIdRuolo/{idRuolo}")
	public Ruolo findByIdRuolo(@PathVariable("idRuolo") int idRuolo) {
		return ruoloRep.findById(idRuolo).get();
	}

	@PostMapping("aggiungi")
	public String aggiungi(@RequestBody Ruolo r) {
		System.out.println(r.toString());
		ruoloRep.save(r);
		return "Ruolo aggiunto al Database!";
	}
	
	@PutMapping("aggiorna")
	public String aggiorna(@RequestBody Ruolo r) {
		System.out.println(r.toString());
		ruoloRep.save(r);
		return "Ruolo aggiornato al Database!";
	}
	
	@DeleteMapping("cancella")
	public String cancella(@RequestBody Ruolo r) {
	    ruoloRep.delete(r);
	    return "Ruolo eliminato con successo!";
	}
}
