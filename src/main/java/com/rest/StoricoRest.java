package com.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.StoricoRepository;
import com.model.Storico;

@RestController
@RequestMapping("Storico")

public class StoricoRest {
	@Autowired
	private StoricoRepository storicoRep;

	@GetMapping("findByIdPersona/{idPersona}")
	public List<Storico> findByIdPersona(@PathVariable("idPersona") int idPersona) {
		return storicoRep.findByIdPersona(idPersona);	 
	}

	@GetMapping("findByIdRuolo/{idRuolo}")
	public List<Storico> findByIdRuolo(@PathVariable("idRuolo") int idRuolo) {
		return storicoRep.findByIdRuolo(idRuolo);
	
	}

	@GetMapping("findById/{idStorico}")
	public Storico findById(@PathVariable("idStorico") int idStorico) {
		Storico s = storicoRep.findById(idStorico).get();
		return s;
	}
	
     @PostMapping("aggiungi")
		public String aggiungi(@RequestBody Storico s) {
			System.out.println(s.toString());
			storicoRep.save(s);
			return "Storico aggiunta al Database!";
		}
	}
