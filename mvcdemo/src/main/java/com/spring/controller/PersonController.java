package com.spring.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PersonController {
public PersonController(){
	System.out.println("creating person controller");
}

@RequestMapping("/login")
public String login(){
 
	return "persondetails";
}
}
