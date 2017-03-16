package com.spring.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.Cart;
import com.spring.model.CartItem;
import com.spring.model.CustomerOrder;
@Repository
public class CustomerOrderDaoImpl implements CustomerOrderDao{
	@Autowired
	private SessionFactory sessionfactory;
	@Override
	public void addCustomerOrder(Cart cart) {
		// TODO Auto-generated method stub
		CustomerOrder customerOrder=new CustomerOrder();
		customerOrder.setCart(cart);
		customerOrder.setCustomer(cart.getCustomer());
		customerOrder.setBillingaddress(cart.getCustomer().getBillingaddress());
		customerOrder.setShippingaddress(cart.getCustomer().getShippingaddress());
		sessionfactory.getCurrentSession().save(customerOrder);
		List<CartItem> cartItems=cart.getCartItem();
		double grandTotal=0.0;
		for(CartItem cartItem:cartItems){
		grandTotal=grandTotal + cartItem.getTotalPrice();
		}
		cart.setGrandTotal(grandTotal);
		sessionfactory.getCurrentSession().update(cart);
	}

}
