package com.spring.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PersonController {
public PersonController(){
	System.out.println("creating person controller");
}

@RequestMapping(value="/login", method=RequestMethod.GET)
public String login(@Valid @RequestParam(value="error", required=false) String error, @RequestParam(value="logout", required= false) String logout ,
		Model model){
	if(error != null)
		model.addAttribute("error", "INVALID USERNAME OR PASSWORD PLEASE TRY AGAIN ");
	if(logout != null)
		model.addAttribute("logout", "YOU HAVE SUCCESSFULLY LOGGED OUT " );
	return "login";
}
}
