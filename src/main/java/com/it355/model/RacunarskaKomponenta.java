package com.it355.model;

public class RacunarskaKomponenta {
    
    private String naziv;
    private String tip;
    private String proizvodjac;
    private String cena;

    public RacunarskaKomponenta() {
    }

    public RacunarskaKomponenta(String naziv, String tip, String proizvodjac, String cena) {
        this.naziv = naziv;
        this.tip = tip;
        this.proizvodjac = proizvodjac;
        this.cena = cena;
    }

    public String getNaziv() {
        return naziv;
    }

    public void setNaziv(String naziv) {
        this.naziv = naziv;
    }

    public String getTip() {
        return tip;
    }

    public void setTip(String tip) {
        this.tip = tip;
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
    
    
    
}
