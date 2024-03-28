package com.dao;

import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.model.Persona;
import com.model.Storico;

@Repository
public interface PersonaRepository extends JpaRepository<Persona, Integer> {
			
	//@Query(value = "SELECT p FROM Persona p WHERE p.nome LIKE %:nome%")
	List<Persona> findByNome(@Param("nome") String nome);
		
	//@Query(value = "SELECT p FROM Persona p WHERE p.cognome LIKE %:cognome%")
	List<Persona> findByCognome(@Param("cognome") String cognome);
	
	@Query(value = "SELECT p FROM Persona p WHERE p.nome=:nome AND p.cognome=:cognome")
	List<Persona> findByNomeECognome(@Param("nome") String nome, @Param("cognome") String cognome);

	List<Persona> findByEmailContaining(String email);

	@Query("SELECT s FROM Storico s WHERE s.ruoloCollegato.stipendio = :stipendio AND s.dataInizio >= :dataInizio AND s.dataFine <= :dataFine")
	List<Storico> findByStipendioAndDataInizioAfterAndDataFineBefore(int stipendio, Date dataInizio, Date dataFine);
	
	@Query("SELECT s FROM Storico s WHERE s.ruoloCollegato.stipendio BETWEEN :minStipendio AND :maxStipendio")
	List<Storico> findByStipendioBetween(Integer minStipendio, Integer maxStipendio);

	
}
