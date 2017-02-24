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
	@Override
	public void saveCustomer(Customer customer) {
		// TODO Auto-generated method stub
		customerDao.saveCustomer(customer);
		
	}

}
