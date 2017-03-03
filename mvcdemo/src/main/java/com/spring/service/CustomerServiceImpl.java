package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.CustomerDao;
import com.spring.model.Customer;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService{
@Autowired
public CustomerDao customerDao;
	
	public void saveCustomer(Customer customer) {
		// TODO Auto-generated method stub
		customerDao.saveCustomer(customer);
		
	}
	
	public Customer getCustomerByUsername(String username) {
		// TODO Auto-generated method stub
		return customerDao.getCustomerByUsername(username);
	}

}
