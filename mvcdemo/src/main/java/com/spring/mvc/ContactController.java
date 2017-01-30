package com.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactController {
public ContactController(){
	System.out.println("creating contact controller");
	
}
@RequestMapping("/contact")
public String contactus(){
	return "contact";
}
}
