package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.model.Cart;
import com.spring.model.Contact;
import com.spring.model.Customer;
import com.spring.service.CartService;
import com.spring.service.CustomerService;

@Controller
public class CartController {
	@Autowired
	private CustomerService customerservice;
	@Autowired
	private CartService cartservice;

	@RequestMapping("/getCartId")
	public String getCartId(Model model) {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = user.getUsername();
		Customer customer = customerservice.getCustomerByUsername(username);
		Cart cart = customer.getCart();
		int cartId = cart.getId();
		model.addAttribute("cartId", cartId);
		return "cart";
	}

	@RequestMapping("/getCart")
	public Cart getCart(@PathVariable int cartId) {
		Cart cart = cartservice.getCart(cartId);
		return cart;
	}
@RequestMapping("/cart")
	public String cart(){
		return "cart";
	}
}
