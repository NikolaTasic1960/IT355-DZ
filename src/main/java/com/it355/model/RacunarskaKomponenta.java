package com.it355.model;

import javax.persistence.Column;  
import javax.persistence.Entity;  
import javax.persistence.GeneratedValue;  
import javax.persistence.GenerationType;  
import javax.persistence.Id;  
import javax.persistence.Table;  

@Entity
@Table(name="proizvod")
public class RacunarskaKomponenta {
    
	@Id
	@Column(name="id_komponente")
	@GeneratedValue(strategy=GenerationType.IDENTITY)  
	private int id;
	
	@Column(name="naziv")
    private String naziv;
	
	@Column(name="kategorija")
    private String kategorija;
	
	@Column(name="proizvodjac")
    private String proizvodjac;
	
	@Column(name="cena")
    private String cena;
	
	@Column(name="opis")
    private String opis;

    public RacunarskaKomponenta(){}

    public RacunarskaKomponenta(String naziv, String kategorija, String proizvodjac, String cena, String opis) {
        this.naziv = naziv;
        this.kategorija = kategorija;
        this.proizvodjac = proizvodjac;
        this.cena = cena;
        this.opis = opis;
    }
    
    public void izmeniPodatke(String naziv, String kategorija, String proizvodjac, String cena, String opis){
    	this.naziv = naziv;
        this.kategorija = kategorija;
        this.proizvodjac = proizvodjac;
        this.cena = cena;
        this.opis = opis;
    }

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public String getKategorija() {
        return kategorija;
    }

    public void setKategorija(String kategorija) {
        this.kategorija = kategorija;
    }

    public String getProizvodjac() {
        return proizvodjac;
    }

    public void setProizvodjac(String proizvodjac) {
        this.proizvodjac = proizvodjac;
    }

    public String getCena() {
        return cena;
    }

    public void setCena(String cena) {
        this.cena = cena;
    }
    
    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public int getId(){
    	return id;
    }

	@Override
	public String toString() {
		return this.naziv + " " + this.opis + " " + this.cena + " " +
	           this.proizvodjac + this.kategorija;
	}
    
}