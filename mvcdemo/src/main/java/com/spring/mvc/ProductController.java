package com.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.service.ProductService;

@Controller
public class ProductController {
	
	private ProductService productService;
	
public ProductController(){
	System.out.println("creating product controller");
}
@RequestMapping("/processproduct")
public ModelAndView saveProduct(@ModelAttribute("product") Product product){
	productService.saveProduct(product);
	return null;
}
@RequestMapping("/getproductdetails")
public String getproductdetails(Model model){
 model.addAttribute("product", new Product());
 return "productdetails";
	}
}
