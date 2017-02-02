package com.spring.mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	
public ProductController(){
	System.out.println("creating product controller");
}
@RequestMapping("/admin/product/addproduct")
public ModelAndView saveProduct(@ModelAttribute(value="product") Product product){
	Product newProduct=productService.saveProduct(product);
	return new ModelAndView("productList","product", newProduct);
}
@RequestMapping("/admin/product/productdetails")
public String getproductdetails(Model model){
 model.addAttribute("product", new Product());
 return "productdetails";
	}
}
