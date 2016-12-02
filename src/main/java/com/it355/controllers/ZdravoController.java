package com.it355.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.ModelMap;

@Controller
public class ZdravoController {

    @RequestMapping("/")
    public String printHello() {
        return "pozdrav";
    }
    
    @RequestMapping("/pozdrav")
    public String pozdrav() {
        return "pozdrav";
    }

}
