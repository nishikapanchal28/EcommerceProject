package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.model.Contact;

import com.spring.service.ContactService;;

@Controller
public class ContactController {
	@Autowired
	private ContactService contactservice;
	
public ContactController(){
	System.out.println("creating contact controller");
	
}
@RequestMapping("/contact")
public String contactus(Model model){
	model.addAttribute("contact", new Contact());

	return "contact";
}
@RequestMapping(value="/addcontact", method=RequestMethod.POST)
public String Addcontact(@ModelAttribute("contact") Contact contact,HttpServletRequest request) {
	contactservice.saveContact(contact);
	return "home";
}
@RequestMapping(value="/admin/contactlist" , method = RequestMethod.GET)
public String getAllContacts(Model model){
	List<Contact> contacts=contactservice.listAllContact();
	model.addAttribute("contactList",contacts);
	
	return "contactlist";
}

}
