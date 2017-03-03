package com.niit.shoppingcart.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.Dao.CustomerDao;
import com.niit.shoppingcart.model.Customer;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService{
@Autowired
private CustomerDao customerDao;
	@Override
	public void saveCustomer(Customer customer) {
		// TODO Auto-generated method stub
		customerDao.saveCustomer(customer);
		
	}

}
