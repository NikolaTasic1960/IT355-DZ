package com.it355.dz.nikolatasic1960;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.ModelMap;

@Controller
@RequestMapping("/")
public class ZdravoController {

    @RequestMapping(method = RequestMethod.GET)
    public String printHello(ModelMap model) {
        model.addAttribute("poruka", "IT355 DZ Nikola Tasić 1960");
        return "pozdrav";
    }
    
    @RequestMapping("/prikaz")
    public String prikaz() {
        return "prikaz";
    }

}
