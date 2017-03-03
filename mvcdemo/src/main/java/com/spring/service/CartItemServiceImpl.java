package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.CartItemDao;
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

}
