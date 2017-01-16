package com.it355.controllers;

import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.bind.annotation.RenderMapping;
 
@Controller(value = "MyFirstSpringMVCPortlet")
@RequestMapping("VIEW")
public class Portlet{
 
	@RenderMapping
	 public String handleRenderRequest(RenderRequest request,RenderResponse response,Model model){
	  return "defaultRender";
	 }
 
}