package com.spring.dao;

import javax.persistence.Query;

import org.h2.engine.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Authorities;
import com.spring.model.Cart;
import com.spring.model.Customer;
@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao{
	@Autowired
	private SessionFactory sessionFactory;
	public CustomerDaoImpl(SessionFactory sessionFactory) {
		// TODO Auto-generated constructor stub
		super();
		this.sessionFactory=sessionFactory;
	}
	public void saveCustomer(Customer customer) {
		// TODO Auto-generated method stub
		
		String username=customer.getUsers().getUsername();
			String role="ROLE_USER";
			
			Authorities authorities=new Authorities();
			authorities.setUsername(username);
			authorities.setRole(role);
			
			sessionFactory.getCurrentSession().save(authorities);  
			
			Cart cart=new Cart();
			customer.setCart(cart);
			
			cart.setCustomer(customer);
		    System.out.println(customer.getUsers().isEnabled()); 
		sessionFactory.getCurrentSession().save(customer);
		
	}
	
	public Customer getCustomerByUsername(String username) {
		// TODO Auto-generated method stub
	return sessionFactory.getCurrentSession().get(Customer.class, username);
	}

}
