package com.spring.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
	@Override
	public void saveCustomer(Customer customer) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(customer);
		
	}

}
