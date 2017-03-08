package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.CartItemDao;
import com.spring.model.Cart;
import com.spring.model.CartItem;

@Service
public class CartItemServiceImpl implements CartItemService{
@Autowired
private CartItemDao cartItemDao;
	
	@Override
	public void addCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		cartItemDao.addCartItem(cartItem);;
	}

	@Override
	public CartItem getCartItem(int cartItemId) {
		// TODO Auto-generated method stub
		return cartItemDao.getCartItem(cartItemId);
	}

	@Override
	public void removeCartItem(CartItem cartItem) {
cartItemDao.removeCartItem(cartItem);
		
	}

	@Override
	public void removeAllCartItems(Cart cart) {
		// TODO Auto-generated method stub
		cartItemDao.removeAllCartItems(cart);
	}

}
