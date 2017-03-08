package com.spring.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.Cart;
import com.spring.model.CartItem;
@Repository
public class CartItemDaoImpl implements CartItemDao{
@Autowired
private SessionFactory sessionFactory;
	
	public void addCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
	}

	@Override
	public CartItem getCartItem(int CartItemId) {
		// TODO Auto-generated method stub
			return sessionFactory.getCurrentSession().get(CartItem.class, CartItemId);
	}

	@Override
	public void removeCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(cartItem);
		
	}

	@Override
	public void removeAllCartItems(Cart cart) {
		// TODO Auto-generated method stub
		List<CartItem> cartItems=cart.getCartItem();
		//JDK 1.5 feature - for each loop
		for(CartItem cartItem:cartItems){
		removeCartItem(cartItem);
		}
	}

}
