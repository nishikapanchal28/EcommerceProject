package com.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {
public RegisterController(){
	System.out.println("creating register controller");
}
@RequestMapping("/register")
public ModelAndView getdisplayregister(@ModelAttribute("register") Register register){
	return new ModelAndView("displayregister","registerObj",register);
}
@RequestMapping("/getregistrationdetails")
public String getdisplayregister(Model model){
 model.addAttribute("rigister", new Register());
	return "register";
}
}