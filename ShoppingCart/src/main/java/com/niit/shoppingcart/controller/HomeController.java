package com.niit.shoppingcart.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
public HomeController(){
	System.out.println("creating home controller");
	
}

@RequestMapping(value={"/","home"})
public String homepage(){
return "home";
}

}

