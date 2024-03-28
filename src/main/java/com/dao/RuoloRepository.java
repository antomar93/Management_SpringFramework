package com.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.model.Ruolo;

@Repository
public interface RuoloRepository extends JpaRepository<Ruolo, Integer> {
	
	//@Query(value = "SELECT r FROM Ruolo r WHERE r.DESCRIZIONE")
	List<Ruolo> findByDescrizione(@Param("descrizione") String descrizione);

	List<Ruolo> findByDescrizioneContainingOrderByIdRuolo(@Param("descrizione") String descrizione);

	

}
