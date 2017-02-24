package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.spring.model.Customer;
import com.spring.service.CustomerService;


@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerService;
	@RequestMapping(value="/registerCustomer" , method = RequestMethod.GET)
	public String getRegistrationForm(Model model){
		
	model.addAttribute("customer", new Customer());

	return "register";
}
	@RequestMapping(value = "/registerdetails", method = RequestMethod.POST)
	public String registerCustomer(@ModelAttribute(value = "customer") Customer customer) {
		customerService.saveCustomer(customer);
		return "home";
	}
}