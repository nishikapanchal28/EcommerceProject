package com.niit.shoppingcart.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.shoppingcart.Service.CustomerService;
import com.niit.shoppingcart.model.Customer;

@Controller
public class CustomerController {
@Autowired
private CustomerService customerService;
	@RequestMapping(value = "/all/registerCustomer", method = RequestMethod.GET)
	public String getRegistrationForm(Model model) {

		model.addAttribute("customer", new Customer());

		return "registercustomer";
	}

	@RequestMapping(value = "/all/registerdetails", method = RequestMethod.POST)
	public String registerCustomer(@Valid @ModelAttribute(value = "customer") Customer customer,BindingResult result,Model model) {
		if(result.hasErrors())
		{
			return "registercustomer";
		}
		try {
			customerService.saveCustomer(customer);
		} catch (Exception e) {
			model.addAttribute("duplicateUsername","Username already exists. Please enter different username");
			System.out.println("Exception is " + e.getMessage());
	return "registercustomer";
		}
		model.addAttribute("registrationSuccess","success");
		return "login";
	}
}