package com.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {
public RegisterController(){
	System.out.println("creating register controller");
}
@RequestMapping("/register")
public String registerhere(){
	return "register";
}
}
