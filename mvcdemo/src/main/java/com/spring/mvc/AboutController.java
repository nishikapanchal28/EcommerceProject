package com.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AboutController {
public AboutController(){
	System.out.println("creating about controller");
}
@RequestMapping("/about")
public String aboutus(){
	return "about";
}
}
