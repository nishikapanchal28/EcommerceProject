package com.spring.mvc;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mvc.Product;
import com.spring.service.CategoryService;
import com.spring.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
public ProductController(ProductService productService){
	System.out.println("creating product controller");
	this.productService=productService;
	System.out.println("PRODUCTSERVICE " + productService);
}
@RequestMapping("/productdetails")
public String getproductdetails(Model model){
 model.addAttribute("product", new Product());
 model.addAttribute("categories",categoryService.getCategories());
 return "productdetails";
	}
@RequestMapping("/addproduct")
public String saveProduct(@Valid @ModelAttribute(value="product") Product product,BindingResult result){
	if(result.hasErrors())
		return "productdetails";
	System.out.println("PRODUCT " + product.getProductname() + " " + product.getManufacturerename() + " " + product.getPrice());
	productService.saveProduct(product);
	return "";
}
}

