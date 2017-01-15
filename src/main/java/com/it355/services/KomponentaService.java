package com.it355.services;

import java.util.List;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.it355.model.RacunarskaKomponenta;

@Service("kompService")
public class KomponentaService {
	
	public KomponentaService(){}
	
	@Autowired
	KomponentaDAO kompDAO;
	
	@Transactional
	public List<RacunarskaKomponenta> vratiSveKomponente(){
		return kompDAO.vratiSveKomponente();
	}
	
	@Transactional
	public List<RacunarskaKomponenta> vratiSveKomponentePoKategoriji(String kategorija){
		return kompDAO.vratiSveKomponentePoKategoriji(kategorija);
	}
	
	@Transactional
	public List<RacunarskaKomponenta> vratiKomponentePoNazivu(String search_term){
		return kompDAO.vratiKomponentePoNazivu(search_term);
	}
	
	@Transactional
	public RacunarskaKomponenta vratiKomponentu(int id){
		return kompDAO.vratiKomponentu(id);
	}
	
	@Transactional
	public void dodajKomponentu(RacunarskaKomponenta komponenta){
		kompDAO.dodajKomponentu(komponenta);
	}
	
	@Transactional
	public void izmeniKomponentu(RacunarskaKomponenta komponenta){
		kompDAO.izmeniKomponentu(komponenta);
	}
	
	@Transactional
	public void obrisiKomponentu(int id){
		kompDAO.obrisiKomponentu(id);
	}
	
}