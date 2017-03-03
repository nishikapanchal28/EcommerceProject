package com.spring.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.CartItem;
@Repository
public class CartItemDaoImpl implements CartItemDao{
@Autowired
private SessionFactory sessionFactory;
	@Override
	public void addCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
	}

}
