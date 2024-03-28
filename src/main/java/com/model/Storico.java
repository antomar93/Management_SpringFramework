package com.model;

import java.sql.Date;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Column;

@Entity
public class Storico {
	@Id
	@Column (name="IDSTORICO")
	private int idStorico;
	
	@ManyToOne
	@JoinColumn(name="IDRUOLO")
	private Ruolo ruoloCollegato; //sto creando una variabile di nome idRuolo di tipo Ruolo, abbiamo insegnato a java un nuovo tipo	
	
	@ManyToOne
	@JoinColumn(name="IDPERSONA")
	private Persona personaCollegata;
	
	@Column (name="DATA_INIZIO")
	private Date dataInizio;
	@Column (name="DATA_FINE")
	private Date dataFine;
	
	
	
///////////////////////////////GET & SET : STORICO////////////////////////////////////////////////////////////////////////	
	

	public int getIdStorico()
	{
		return idStorico;
	}
	
	public void setIdStorico(int p)
	{
		idStorico = p;
	}
	
	public Date getDataInizio() {
		return dataInizio;
	}

	public void setDataInizio(Date dataInizio) {
		this.dataInizio = dataInizio;
	}

	public Date getDataFine() {
		return dataFine;
	}

	public void setDataFine(Date dataFine) {
		this.dataFine = dataFine;
	}
	
		
///////////////////////////////GET & SET : RUOLO////////////////////////////////////////////////////////////////////////	
	
	public Ruolo getRuoloCollegato() {
		return ruoloCollegato;
	}

	public void setRuoloCollegato(Ruolo ruoloCollegato) {
		this.ruoloCollegato = ruoloCollegato;
	}
	
	
		
///////////////////////////////GET & SET : PERSONA////////////////////////////////////////////////////////////////////////	
	
	public Persona getPersonaCollegata() {
		return personaCollegata;
	}

	public void setPersonaCollegata(Persona personaCollegata) {
		this.personaCollegata = personaCollegata;
	}
	

/////////////////////////////////////////TO STRING/////////////////////////////////////////////////////////////////////

	@Override
	public String toString() {
		return "Storico [idStorico=" + idStorico + ", ruoloCollegato=" + ruoloCollegato + ", personaCollegata="
				+ personaCollegata + ", dataInizio=" + dataInizio + ", dataFine=" + dataFine + "]";
	}




	}			

