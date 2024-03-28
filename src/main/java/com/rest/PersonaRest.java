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

import com.dao.PersonaRepository;
import com.model.Persona;

@RestController
@RequestMapping("Persona")

public class PersonaRest {

	@Autowired
	private PersonaRepository personaRep;


	@GetMapping("findByNome/{nome}")
	public List<Persona> findByNome(@PathVariable("nome") String nome) {
		return personaRep.findByNome(nome);
	}

	@GetMapping("findByCognome/{cognome}")
	public List<Persona> findByCognome(@PathVariable("cognome") String cognome) {
		return personaRep.findByCognome(cognome);
	}

	@GetMapping("findById/{idPersona}")
	// public Persona cercaById(@RequestParam(value="id") int id)
	public Persona findByIdPersona(@PathVariable("idPersona") int idPersona) {
		return personaRep.findById(idPersona).get();
	}

	//POST: Add
	
	@PostMapping("aggiungi")
	public String aggiungi(@RequestBody Persona p) {
		System.out.println(p.toString());
		personaRep.save(p);
		return "Persona aggiunta al Database!";
	}

	//PUT: Update
	
	@PutMapping("aggiorna")
	public String aggiorna(@RequestBody Persona p) {
		System.out.println(p.toString());
		personaRep.save(p);
		return "Persona aggiornata nel Database!";
	}

	//DELETE: Delete
	
	@DeleteMapping("cancella")
	public String cancella(@RequestBody Persona p) {
		personaRep.delete(p);
		return "Persona eliminata con successo!";
	}
	
//	@DeleteMapping("cancella/{idPersona}")
//	public String cancella(@PathVariable("idPersona") int idPersona) {
//		personaRep.deleteById(idPersona);
//		return "Persona eliminata con successo!";
//	}

	/*
	 * @GetMapping("cercaPerNomeECognome") public List<Persona>
	 * cercaByNomeECognome(@RequestParam(value = "nome") String nome,
	 * 
	 * @RequestParam(value = "cognome") String cognome) { List<Persona> res = new
	 * ArrayList<>();
	 * 
	 * Persona p = new Persona(); p.setNome("Alessio"); p.setCognome("Lops");
	 * p.setEta(32); p.setCodiceFiscale("LPSLSS92HJ985U2");
	 * p.setEmail("alessio@gmail.com"); p.setTelefono(0213); res.add(p);
	 * 
	 * Persona p1 = new Persona(); p1.setNome("Laura"); p1.setCognome("Napolitano");
	 * p1.setEta(24); p1.setCodiceFiscale("NPLTLR00HJ985K2");
	 * p1.setEmail("l.napi@outlook.com"); p1.setTelefono(3452); res.add(p1);
	 * 
	 * return res; }
	 
       @GetMapping("findByNomeECognome/{nome}/{cognome}")
       public List<Persona> findByNomeECognome(@PathVariable("nome") String nome,@PathVariable("cognome") String cognome) {
       return personaRep.findByNomeECognome(nome, cognome);
       }
       
	 * @GetMapping("findById") public List<Persona>
	 * findByIdPersona(@RequestParam(value = "idPersona") int idPersona) { return
	 * personaRep.findByIdPersona(idPersona); }
	 */
}
