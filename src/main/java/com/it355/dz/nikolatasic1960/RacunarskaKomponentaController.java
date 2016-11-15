package com.it355.dz.nikolatasic1960;

import com.it355.model.RacunarskaKomponenta;
import com.it355.logging.Logging;
import java.util.Locale;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RacunarskaKomponentaController {

    @Autowired
    private MessageSource ms;
    
    @Autowired
    private Logging log;

    @RequestMapping(value = "/racunarskakomponenta", method
            = RequestMethod.GET)
    public String racunarskakomponenta(ModelMap map) {

        System.out.println("MessageSource");
        ms.getMessage("name", null, Locale.ENGLISH);
        map.addAttribute("racunarskakomponenta", new RacunarskaKomponenta());
        
        log.logg();
        log.logout();

        return "racunarskakomponenta";
    }

    @RequestMapping(value = "/addKomponenta", method = RequestMethod.POST)
    public String addDeo(@ModelAttribute RacunarskaKomponenta komponenta,ModelMap model) {
        model.addAttribute("naziv", komponenta.getNaziv());
        model.addAttribute("zaAuto", komponenta.getTip());
        model.addAttribute("zaModel", komponenta.getProizvodjac());
        model.addAttribute("cena", komponenta.getCena());
        return "prikaz";
    }
}
