package com.model;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Persona {
	
	@Id
	@Column(name="IDPERSONA")
	private int idPersona;
	@Column(name="NOME")
	private String nome;
	@Column(name="COGNOME")
	private String cognome;
	@Column(name="ETA")
	private int eta;
	@Column(name="CODFISCALE")
	private String codFiscale;
	@Column(name="EMAIL")
	private String email;
	@Column(name="TELEFONO")
	private int telefono;
	
	@JsonIgnore
	@OneToMany(mappedBy="personaCollegata", cascade = CascadeType.ALL)
    private List<Storico> listaStorici;
	
///////////////////////////////GET & SET : PERSONA////////////////////////////////////////////////////////////////////////	
	
	public int getIdPersona() {
		return idPersona;
	}
	public void setIdPersona(int idPersona) {
		this.idPersona = idPersona;
	}
	
	
	public String getNome() {
		return nome;
	}
    public void setNome(String nome) {
    	this.nome = nome;
	}

	
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	
	public int getEta() {
		return eta;
	}
    public void setEta(int eta) {
    	this.eta=eta;
	}

    
    public String getCodFiscale() {
		return codFiscale;
	}
	public void setCodFiscale(String codFiscale) {
		this.codFiscale = codFiscale;
	}
    	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public int getTelefono() {
		return telefono;
	}
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	
	public List<Storico> getListaStorici() {
		return listaStorici;
	}
	public void setListaStorici(List<Storico> listaStorici) {
		this.listaStorici = listaStorici;
	}
	
///////////////////////////////COSTRUTTORE : PERSONA////////////////////////////////////////////////////////////////////////	
	
//public Persona(String nome, String cognome, int eta, String email, int telefono, int idPersona, String codFiscale) {
//	super();
//	this.idPersona = idPersona;
//	this.nome = nome;
//	this.cognome = cognome;
//	this.eta = eta;
//	this.codFiscale = codFiscale;
//	this.email = email;
//	this.telefono = telefono;	
//}
public Persona()
{
	}
//////////////////////////////////////TO STRING////////////////////////////////////////////////////////////////////	


@Override
public String toString() {
	return "Persona [idPersona=" + idPersona + ", nome=" + nome + ", cognome=" + cognome + ", eta=" + eta
			+ ", codice fiscale=" + codFiscale + ", email=" + email + ", telefono=" + telefono + "]";
}	
}



