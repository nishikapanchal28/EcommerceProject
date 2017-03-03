package com.spring.controller;

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

@RequestMapping(value="/login", method=RequestMethod.POST)
public String login(@RequestParam(value="error", required=false) String error, @RequestParam(value="logout", required= false) String logout ,
		Model model){
	if(error != null)
		model.addAttribute("error", "invalid ");
	if(logout != null)
		model.addAttribute("logout", "successfully logged out" );
	return "persondetails";
}
}
