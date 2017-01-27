package com.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {
public ProductController(){
	System.out.println("creating product controller");
}
@RequestMapping("/processproduct")
public ModelAndView getdisplayproduct(@ModelAttribute("product") Product product){
	return new ModelAndView("displayproduct","productObj",product);
}
@RequestMapping("/getproductdetails")
public String getproductdetails(Model model){
 model.addAttribute("product", new Product());
 return "productdetails";
	}

}
