package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.spring.model.Cart;
import com.spring.model.CartItem;
import com.spring.model.Customer;
import com.spring.model.Product;
import com.spring.service.CartItemService;
import com.spring.service.CartService;
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
	@Autowired
	private CartService cartservice;

	@ResponseStatus(value = HttpStatus.NO_CONTENT)

	@RequestMapping("/addCartItem/{p.id}")
	public void addCartItem(@PathVariable(value = "id") int productId) {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		String username = user.getUsername();
		Customer customer = customerservice.getCustomerByUsername(username);// from Users where username=?
		Cart cart = customer.getCart();
		List<CartItem> cartItems = cart.getCartItem();

		Product product = productservice.getById(productId);

		for (int i = 0; i < cartItems.size(); i++) {
			CartItem cartItem = cartItems.get(i);
			Product p = cartItem.getProduct();
			// 1 == 1
			if (p.getId() == productId) {
				cartItem.setQuantity(cartItem.getQuantity() + 1);// increment the quantity
				cartItem.setTotalPrice(cartItem.getQuantity() * p.getPrice()); // update the total price
				cartitemservice.addCartItem(cartItem);// update the quantity in the cartitem
				return;
			}
		}

		CartItem cartItem = new CartItem();
		cartItem.setQuantity(1);
		cartItem.setTotalPrice(cartItem.getQuantity() * product.getPrice());
		cartItem.setProduct(product); // set product id
		cartItem.setCart(cart);// set cart id
		cartitemservice.addCartItem(cartItem); // insert query
	}
	
/*	  @RequestMapping("/removeCartItem/{cartItemId}")	  
	@ResponseStatus(value=HttpStatus.NO_CONTENT) public void
	 removeCartItem(@PathVariable int cartItemId){ CartItem
	  cartItem=cartitemservice.getCartItem(cartItemId);
	  cartitemservice.removeCartItem(cartItem); }
	 
	 @RequestMapping("/removeAllCartItems/{cartId}")
	 
	 @ResponseStatus(value=HttpStatus.NO_CONTENT) public void
	  removeAllCartItems(@PathVariable int cartId){ Cart
	 cart=cartservice.getCart(cartId);
	 cartitemservice.removeAllCartItems(cart); }
	 */

}
