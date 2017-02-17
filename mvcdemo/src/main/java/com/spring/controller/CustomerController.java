package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.model.Customer;


@Controller
public class CustomerController {
	@RequestMapping(value="/registerCustomer" , method = RequestMethod.GET)
	public String getRegistrationForm(Model model){
		
	model.addAttribute("customer", new Customer());

	return "register";
}
}