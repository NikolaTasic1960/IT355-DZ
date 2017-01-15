package com.it355.services;

import java.util.ArrayList;
import java.util.List;    
import org.hibernate.Session;  
import org.hibernate.SessionFactory;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.stereotype.Repository;
import com.it355.model.RacunarskaKomponenta;

@Repository
public class KomponentaDAO {

	@Autowired  
    private SessionFactory sessionFactory;
	
	private List<RacunarskaKomponenta> komponente;

	public List<RacunarskaKomponenta> vratiSveKomponente(){
		Session session = this.sessionFactory.getCurrentSession(); 
		komponente = session.createQuery("from RacunarskaKomponenta").list();  
		return komponente;
	}
	
	public List<RacunarskaKomponenta> vratiSveKomponentePoKategoriji(String kategorija){
		List<RacunarskaKomponenta> filtriraneKomponente = new ArrayList<RacunarskaKomponenta>();
		if(kategorija.equals("Sve")) return komponente;
		if(kategorija.equals("Graficka")) kategorija = "Graficka kartica";
		if(kategorija.equals("Maticna")) kategorija = "Maticna ploca";
		for(RacunarskaKomponenta r : komponente){
			if(r.getKategorija().equals(kategorija))
				filtriraneKomponente.add(r);
		}
		return filtriraneKomponente;
	}
	
	public List<RacunarskaKomponenta> vratiKomponentePoNazivu(String search_term){
		List<RacunarskaKomponenta> filtriraneKomponente = new ArrayList<RacunarskaKomponenta>();
		for(RacunarskaKomponenta r : komponente){
			if(r.toString().toLowerCase().contains(search_term.toLowerCase()))
				filtriraneKomponente.add(r);
		}
		return filtriraneKomponente;
	}
	
	public RacunarskaKomponenta vratiKomponentu(int id){
		vratiSveKomponente();
		RacunarskaKomponenta komponenta = null;
		for(RacunarskaKomponenta komp : komponente){
			if(komp.getId() == id){
				komponenta = komp;
				break;
			}
		}
		return komponenta;
	}
	
	public RacunarskaKomponenta dodajKomponentu(RacunarskaKomponenta komponenta){
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(komponenta);
		return komponenta;
	}
	
	public void izmeniKomponentu(RacunarskaKomponenta komponenta){
		Session session = this.sessionFactory.getCurrentSession(); 
		session.update(komponenta);
	}
	
	public void obrisiKomponentu(int id){
		Session session = this.sessionFactory.getCurrentSession(); 
		RacunarskaKomponenta komp = (RacunarskaKomponenta) session.load(RacunarskaKomponenta.class, new Integer(id));
		if(komp != null){
			session.delete(komp);
		}
	}
	
}
