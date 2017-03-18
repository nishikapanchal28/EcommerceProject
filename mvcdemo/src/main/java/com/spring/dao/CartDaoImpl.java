package com.spring.dao;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.spring.model.Cart;
@Repository
public class CartDaoImpl implements CartDao{
private SessionFactory sessionFactory;
	@Override
	public Cart getCart(int cartId) {
	
		return sessionFactory.getCurrentSession().get(Cart.class, cartId);
	}

	

}
