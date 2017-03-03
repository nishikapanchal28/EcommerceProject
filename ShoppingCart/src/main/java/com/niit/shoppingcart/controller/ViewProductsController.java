package com.niit.shoppingcart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class ViewProductsController {
public ViewProductsController(){
	System.out.println("view controller created");
}
@RequestMapping("/viewproducts")
public String viewpage()
{
	return "viewproducts";
}
}
