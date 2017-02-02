package com.spring.service;

import org.springframework.stereotype.Service;

import com.spring.dao.ProductDao;
import com.spring.mvc.Product;
@Service
public class ProductServiceImpl implements ProductService{
	public ProductDao productDao;
	
	public ProductServiceImpl(){
	System.out.println("creating productseviceimpl instance");
	}

public Product saveProduct(Product product){
return productDao.saveProduct(product);
}
}