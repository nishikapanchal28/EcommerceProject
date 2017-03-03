package com.niit.shoppingcart.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
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

import com.niit.shoppingcart.Service.CategoryService;
import com.niit.shoppingcart.Service.ProductService;
import com.niit.shoppingcart.model.Product;


@Controller
public class ProductController {
	
	Path paths;
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	public ProductController(ProductService productService) {
		super();
		this.productService = productService;
		System.out.println("Inside Product Controller");
	}

	@RequestMapping(value = "/admin/product", method = RequestMethod.GET)
	public String productPage(Model model) {
		model.addAttribute("product", new Product());
		 model.addAttribute("categories",categoryService.getCategories());

		return "productform";
	}

	@RequestMapping(value = "/admin/addproduct", method = RequestMethod.POST)
	public String productAdd(@ModelAttribute("product") Product product,HttpServletRequest request) {
		productService.addProduct(product);
		
		
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
	@RequestMapping(value="/all/viewproducts" ,method=RequestMethod.GET)
public String viewAllProducts(Model model)
{
	List<Product>allProducts=productService.listAllProducts();
	model.addAttribute("products", allProducts);
	return "viewproducts";
}
	
	@RequestMapping("/admin/deleteproduct/{id}")
	public String deleteProduct(@PathVariable("id") int id){
		Product p=productService.getById(id);
		productService.deleteProduct(p);
		
		return "redirect:/viewproducts";
	}
	@RequestMapping("/admin/editproductform")
	public String editProduct(Model model,@RequestParam("id") int id){	
		Product p=productService.getById(id);
		model.addAttribute("product", p);
		return "editproductform";
	}
	@RequestMapping(value = "/admin/editProduct/{id}", method = RequestMethod.POST)
	public String editProductDetails(@Valid @PathVariable("id")int id ,@ModelAttribute("product") Product p,
			BindingResult result,HttpServletRequest request){
	if(result.hasErrors())
		return "productform";
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
		return "redirect:/viewproducts";
	}
	@RequestMapping("/all/productsByCategory")
	public String getProductsByCategory(@RequestParam(name="searchCondition") String searchCondition,
			Model model){
		List<Product>allProducts=productService.listAllProducts();
		model.addAttribute("products", allProducts);
		model.addAttribute("searchCondition",searchCondition);
		return "viewproducts";
	}
}