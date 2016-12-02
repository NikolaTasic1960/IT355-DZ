package com.it355.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/komponenta")
public class RacunarskaKomponentaController {

	@RequestMapping("/dodaj") 
	public String dodajKomponentu(){
		return "dodaj_komponentu";
	}
	
	@RequestMapping("/prikazi") 
	public String prikaziKomponentu(){
		return "prikazi_komponentu";
	}
	
}
