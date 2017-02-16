package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Person;

@Controller
public class PersonController {
public PersonController(){
	System.out.println("creating person controller");
}
@RequestMapping("/addPerson")
public ModelAndView getdisplayperson(@ModelAttribute("person") Person person){
	return new ModelAndView("displayperson","personObj",person);
}
@RequestMapping("/getpersondetails")
public String getdisplayperson(Model model){
 model.addAttribute("person", new Person());
	return "persondetails";
}
}
