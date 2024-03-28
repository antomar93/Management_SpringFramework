package com.model;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Ruolo {
	
	@Id 
	@Column(name="IDRUOLO")
	private int idRuolo;
	@Column(name="DESCRIZIONE")
	private String descrizione;
	@Column(name="STIPENDIO")
	private int stipendio;
	@JsonIgnore
	@OneToMany(mappedBy="ruoloCollegato", cascade = CascadeType.ALL)
    private List<Storico> listaStorici;
	
//-------------------GET & SET : RUOLO------------------------------	
			
	
	public int getIdRuolo()
	{
		return idRuolo;
	}
	public void setIdRuolo(int p)
	{
		idRuolo = p;
	}
	
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	
	public int getStipendio() {
		return stipendio;
	}
	public void setStipendio(int stipendio) {
		this.stipendio = stipendio;
	}
	
	public List<Storico> getListaStorici() {
		return listaStorici;
	}
	public void setListaStorici(List<Storico> listaStorici) {
		this.listaStorici = listaStorici;
	}
	
//------------------------TO STRING-------------------------------
	
	@Override
	public String toString() {
		return "Ruolo [idRuolo=" + idRuolo + ", descrizione=" + descrizione + " ]";
	}

}
