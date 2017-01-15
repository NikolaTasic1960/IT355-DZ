package com.it355.test;

import org.junit.*;
import org.springframework.test.annotation.Rollback;
import static org.junit.Assert.*;
import java.util.List;
import com.it355.model.RacunarskaKomponenta;
import com.it355.services.KomponentaDAO;

public class KomponentaDAOTest {

	public KomponentaDAO kompDAO = new KomponentaDAO();
	
	@Test
	public void testVratiKomponentu(int id){
		RacunarskaKomponenta komp = kompDAO.vratiKomponentu(id);
		assertEquals(komp.getId(), id);
	}
	
	@Test
	public void testVratiSveKomponentePoKategoriji(String term){
		List<RacunarskaKomponenta> komp = kompDAO.vratiSveKomponentePoKategoriji(term);
		for(RacunarskaKomponenta r : komp){
			assertEquals(r.getKategorija(), term);
		}
	}
	
	@Test
	public void testVratiKomponentePoNazivu(String term){
		List<RacunarskaKomponenta> komp = kompDAO.vratiSveKomponentePoKategoriji(term);
		for(RacunarskaKomponenta r : komp){
			assertTrue(r.toString().toLowerCase().contains(term.toLowerCase()));
		}
	}
	
	@Test
	@Rollback(true)
	public void testDodajKomponentu(RacunarskaKomponenta komponenta){
		komponenta.setNaziv("Naziv");
		RacunarskaKomponenta komp = kompDAO.dodajKomponentu(komponenta);
		assertEquals(komp.getNaziv(), komponenta.getNaziv());
	}
	
}