package com.spring.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spring.model.Category;
import com.spring.model.Product;
import com.spring.service.CategoryService;
import com.spring.service.ProductService;

@Controller
public class ProductController {
	Path paths;
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
@RequestMapping(value = "/addproduct", method = RequestMethod.POST)
public String productAdd(@ModelAttribute("product") Product product,HttpServletRequest request) {
	productService.saveProduct(product);
	MultipartFile productImage=product.getImages();
	String root =request.getSession().getServletContext().getRealPath("/");
	if(!productImage.isEmpty())
	{
		 paths=Paths.get(root+"/resources/images/"+product.getId()+".png");
		try {
			productImage.transferTo(new File(paths.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	System.out.println("Paths is :"+paths);
	
	return "home";

}
@RequestMapping(value="/listofproducts" , method = RequestMethod.GET)
public String getAllProducts(Model model){
	List<Product> products=productService.listAllProducts();
	model.addAttribute("productList",products);
	
	return "listofproducts";
}
@RequestMapping("/deleteproduct/{id}")
public String deleteProduct(@PathVariable("id") int id){
	Product p=productService.getById(id);
	productService.deleteProduct(p);
	
	return "redirect:/listofproducts";
}
@RequestMapping("/editproduct")
public String editProduct(Model model,@RequestParam("id") int id){	
	Product p=productService.getById(id);
	model.addAttribute("product", p);
	model.addAttribute("categories",categoryService.getCategories());
	 
	
	return "editproductdetails";
}
@RequestMapping(value ="/editProduct/{id}", method = RequestMethod.POST)
public String editProductDetails(@Valid @PathVariable("id")int id ,@ModelAttribute("product") Product p,
		BindingResult result,HttpServletRequest request){
if(result.hasErrors())
	
	return "productdetails";

	productService.updateProduct(p);
	MultipartFile productImage=p.getImages();
	String root =request.getSession().getServletContext().getRealPath("/");
	if(!productImage.isEmpty())
	{
		 paths=Paths.get(root+"/resources/images/"+p.getId()+".png");
		try {
			productImage.transferTo(new File(paths.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	return "redirect:/listofproducts";
}
@RequestMapping("/productsByCategory")
public String getProductsByCategory(@RequestParam(name="item") String item,
		Model model){
	
	List<Product> list=productService.listAllProducts();
	List<Product> newList=new ArrayList<>();
	
	for(Product p : list)
	{
		
			if(p.getCategory().getCategoryDetails().equals(item))
			{
				newList.add(p);
			}
		
	}
	for(Product ps : newList)
	{
		System.out.println(ps.getId()+" : "+ps.getProductname());
	}
	
	//Assigning list of products to model attribute products
	model.addAttribute("productList",newList);
	//model.addAttribute("searchCondition",searchCondition);
	return "listofproducts";
}
}

