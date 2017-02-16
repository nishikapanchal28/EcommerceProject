package com.spring.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	Logger logger=Logger.getLogger(HomeController.class);
public HomeController(){	
	System.out.println("creating home controller");
    logger.debug("logger created");

}
@RequestMapping("/home")
public String homepage(){
return "home";
}
}

