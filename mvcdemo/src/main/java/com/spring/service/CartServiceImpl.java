package com.spring.service;

import org.springframework.stereotype.Service;

import com.spring.dao.CartDao;
import com.spring.model.Cart;
@Service
public class CartServiceImpl implements CartService{
private CartDao cartdao;
	@Override
	public Cart getCart(int cartId) {
		// TODO Auto-generated method stub
		return cartdao.getCart(cartId);
	}

}
