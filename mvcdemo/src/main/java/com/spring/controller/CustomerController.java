package com.spring.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.spring.model.Customer;
import com.spring.model.Product;
import com.spring.service.CustomerService;


@Controller
public class CustomerController {
	Path paths;
	@Autowired
	private CustomerService customerService;
	@RequestMapping(value="/registerCustomer" , method = RequestMethod.GET)
	public String getRegistrationForm(Model model){
		
	model.addAttribute("customer", new Customer());

	return "register";
}
	@RequestMapping(value ="/registerdetails", method = RequestMethod.POST)
	public String registerCustomer(@Valid@ModelAttribute(value = "customer") Customer customer, BindingResult result, Model model,HttpServletRequest request) {
		
		if (result.hasErrors())
			return "register";
		
		try {
			customerService.saveCustomer(customer);
		} catch (Exception e) {
			model.addAttribute("duplicateUsername","Username already exists. Please enter different username");
			return "register";
		}
		MultipartFile personImage=customer.getPersonimg();
		String root =request.getSession().getServletContext().getRealPath("/");
		if(!personImage.isEmpty())
		{
			 paths=Paths.get(root+"/resources/images/"+customer.getId()+".png");
			try {
				personImage.transferTo(new File(paths.toString()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "home";
	}
}