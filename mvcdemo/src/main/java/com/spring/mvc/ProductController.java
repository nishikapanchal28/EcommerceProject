package com.spring.mvc;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
@RequestMapping(value="/addproduct" ,method=RequestMethod.POST)
public String saveProduct(@Valid @ModelAttribute(value="product") Product product,BindingResult result){
	if(result.hasErrors())
		return "productdetails";
	System.out.println("PRODUCT " + product.getProductname() + " " + product.getManufacturerename() + " " + product.getPrice());
	productService.saveProduct(product);
	return "redirect:/home";
}
@RequestMapping(value="/getallproducts" ,method=RequestMethod.GET)
public String getAllProducts(Model model){
	List<Product> products=productService.getAllProducts();
	model.addAttribute("productList",products);
	return "listofproducts";
}
@RequestMapping("/productspecifications/{id}")
public String viewProduct(@PathVariable int id,Model model){
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
return "productspecifications";
}
@RequestMapping("/deleteproduct/{id}")
public String deleteProduct(@PathVariable("id") int id){
	Product p=productService.getById(id);
	productService.deleteProduct(p);
	
	return "redirect:/listofproducts";
}

@RequestMapping("/editform/{id}")
public String editProductForm(@PathVariable int id,Model model){
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
	model.addAttribute("categories", categoryService.getCategories());
return "editproductdetails";
}

}

