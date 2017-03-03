package com.niit.shoppingcart.Dao;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.Authorities;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Customer;

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
	   
		
	    String username=customer.getUsers().getUsername();
		String role="ROLE_USER";
		
		Authorities authorities=new Authorities();
		authorities.setUsername(username);
		authorities.setRole(role);
		
		sessionFactory.getCurrentSession().save(authorities); 
		
		
		Cart cart=new Cart();
		customer.setCart(cart);
		
		cart.setCustomer(customer);
	 
		try {
			sessionFactory.getCurrentSession().save(customer);
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			System.out.println("Exception is " + e.getMessage());
		}
		
		
	}

}
