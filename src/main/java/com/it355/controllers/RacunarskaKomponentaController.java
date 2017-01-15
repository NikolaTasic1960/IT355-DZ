package com.it355.controllers;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.it355.model.RacunarskaKomponenta;
import com.it355.services.KomponentaService;

@Controller
@RequestMapping("/komponenta")
public class RacunarskaKomponentaController {
	
	@Autowired
	private KomponentaService kompService;
	
	@RequestMapping(value="/dodaj", method=RequestMethod.GET)
	public String pokreniDodavanje(){
		return "dodaj_komponentu";
	}
	
	@RequestMapping(value="/dodaj", method=RequestMethod.POST, headers="Accept=application/json")
	public String dodajKomponentu(HttpServletRequest request){
		kompService.dodajKomponentu(new RacunarskaKomponenta(
				request.getParameter("naziv"),
				request.getParameter("kategorija"),
				request.getParameter("proizvodjac"),
				request.getParameter("cena"),
				request.getParameter("opis")
		));
		return "redirect:/komponenta/pretraga";
	}
	
	@RequestMapping(value="/pretraga", method=RequestMethod.GET, headers="Accept=application/json")
	public String sviProizvodi(Model model){
		List<RacunarskaKomponenta> komponente = kompService.vratiSveKomponente();
		model.addAttribute("komponenta", new RacunarskaKomponenta());
		model.addAttribute("komponente", komponente);
		return "pretrazi_komponente";
	}
	
	@RequestMapping(value="/pretraga/{kategorija}", method=RequestMethod.GET, headers="Accept=application/json")
	public String sviProizvodiPoKategoriji(Model model, @PathVariable("kategorija") String kategorija){
		List<RacunarskaKomponenta> komponente = kompService.vratiSveKomponentePoKategoriji(kategorija);
		model.addAttribute("komponenta", new RacunarskaKomponenta());
		model.addAttribute("komponente", komponente);
		return "pretrazi_komponente"; 
	}
	
	@RequestMapping(value="/pretraga", method=RequestMethod.POST, headers="Accept=application/json")
	public String pretraziProizvodePoNazivu(HttpServletRequest request, Model model){
		String search_term = request.getParameter("search_bar");
		List<RacunarskaKomponenta> komponente = kompService.vratiKomponentePoNazivu(search_term);
		model.addAttribute("komponenta", new RacunarskaKomponenta());
		model.addAttribute("komponente", komponente);
		return "pretrazi_komponente"; 
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.GET, headers="Accept=application/json")  
	public String prikaziKomponentu(Model model, @PathVariable("id") int id){
		model.addAttribute("komponenta", kompService.vratiKomponentu(id));
		return "prikazi_komponentu";
	}
	
	@RequestMapping(value="/{id}/izmeni", method=RequestMethod.GET, headers="Accept=application/json") 
	public String prikaziIzmene(@PathVariable("id") int id, Model model){
		model.addAttribute("komponenta", kompService.vratiKomponentu(id));
		return "izmeni_komponentu";
	}
	
	@RequestMapping(value="/{id}/izmeni", method=RequestMethod.POST, headers="Accept=application/json") 
	public String izmeniKomponentu(@PathVariable("id") int id, HttpServletRequest request){
		RacunarskaKomponenta komp = kompService.vratiKomponentu(id);
		komp.izmeniPodatke(
				request.getParameter("naziv"),
				request.getParameter("kategorija"),
				request.getParameter("proizvodjac"),
				request.getParameter("cena"),
				request.getParameter("opis")
		);
		kompService.izmeniKomponentu(komp);
		return "redirect:/komponenta/pretraga";
	}
	
	@RequestMapping(value="/{id}/obrisi", method=RequestMethod.GET, headers="Accept=application/json") 
	public String obrisiKomponentu(@PathVariable("id") int id){
		kompService.obrisiKomponentu(id);
		return "redirect:/komponenta/pretraga";
	}
	
	
}
