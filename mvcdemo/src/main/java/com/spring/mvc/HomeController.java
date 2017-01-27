package com.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
public HomeController(){
	System.out.println("creating home controller");
	
}
@RequestMapping("/home")
public String homepage(){
return "home";
}
}

