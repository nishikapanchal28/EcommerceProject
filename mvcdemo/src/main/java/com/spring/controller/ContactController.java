package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.model.Product;

@Controller
public class ContactController {
public ContactController(){
	System.out.println("creating contact controller");
	
}
@RequestMapping("/contact")
public String contactus(Model model){
	model.addAttribute("contact", new contact());

	return "contact";
}
