package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.model.Cart;
import com.spring.model.CartItem;
import com.spring.model.Customer;
import com.spring.model.Product;
import com.spring.service.CartItemService;
import com.spring.service.CustomerService;
import com.spring.service.ProductService;

@Controller
public class CartItemController {
	@Autowired
	private ProductService productservice;
	@Autowired
	private CartItemService cartitemservice;
	@Autowired
	private CustomerService customerservice;
@RequestMapping("/all/addCartItem/{p.id}")
public void addCartItem(@PathVariable(value="pid") int productId){
	User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	
	String username=user.getUsername();
	Customer customer=customerservice.getCustomerByUsername(username);//from Users where username=?
	Cart cart=customer.getCart();
	List<CartItem> cartItems= cart.getCartItem();
	
	Product  product = productservice.getById(productId);
	
	for (int i = 0; i <cartItems.size(); i++) {
		CartItem cartItem=cartItems.get(i);
		Product p=cartItem.getProduct();
		     //1    ==  1
		if(p.getId()==productId){
			cartItem.setQuantity(cartItem.getQuantity() + 1);//increment the quantity
			cartItem.setTotalPrice(cartItem.getQuantity() * p.getPrice()); //update the total price
			cartitemservice.addCartItem(cartItem);//update the quantity in the cartitem
			return;
		}	
	}
	
	CartItem cartItem=new CartItem();
	cartItem.setQuantity(1);
	cartItem.setTotalPrice(cartItem.getQuantity() * product.getPrice());
	cartItem.setProduct(product); //set product id
	cartItem.setCart(cart);//set cart id
	cartitemservice.addCartItem(cartItem); //insert query	
}
}
