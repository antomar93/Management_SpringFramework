package com.dao;
import java.sql.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.model.Storico;

@Repository
public interface StoricoRepository extends JpaRepository<Storico, Integer> {
	
	@Query(value = "SELECT s FROM Storico s WHERE s.personaCollegata.idPersona=:idPersona")
	List<Storico> findByIdPersona(@Param("idPersona")int idPersona);
			
	@Query(value = "SELECT s FROM Storico s WHERE s.ruoloCollegato.idRuolo=:idRuolo")
	List<Storico> findByIdRuolo(@Param("idRuolo") int idRuolo);

	@Query(value = "SELECT s FROM Storico s WHERE s.personaCollegata.idPersona=:idPersona")
	List<Storico> findByIdPersonaOrderByDataInizio(int idPersona);
	
	@Query("SELECT s FROM Storico s WHERE s.ruoloCollegato.stipendio = :stipendio AND s.dataInizio >= :dataInizio AND s.dataFine <= :dataFine")
    public List<Storico> findByStipendioAndDataInizioAfterAndDataFineBefore(int stipendio, Date dataInizio, Date dataFine);

	@Query("SELECT s FROM Storico s WHERE s.ruoloCollegato.stipendio BETWEEN :minStipendio AND :maxStipendio")
	List<Storico> findByStipendioBetween(Integer minStipendio, Integer maxStipendio);

}
