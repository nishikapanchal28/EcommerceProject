package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class Helloworldcontroller {
	
	@RequestMapping("/")
	public ModelAndView helloWorld(){
		return new ModelAndView("home","message","WELCOME TO SPRING MVC FRAMEWORK");

}
}