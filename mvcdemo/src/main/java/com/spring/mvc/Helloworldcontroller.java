package com.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class Helloworldcontroller {
	
	@RequestMapping("/")
	public ModelAndView helloWorld(){
		return new ModelAndView("index","message","WELCOME TO SPRING MVC FRAMEWORK");

}
}