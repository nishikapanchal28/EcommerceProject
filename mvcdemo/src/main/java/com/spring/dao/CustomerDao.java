package com.spring.dao;

import com.spring.model.Customer;

public interface CustomerDao {
	public void saveCustomer(Customer customer);
	Customer getCustomerByUsername(String username);
}
