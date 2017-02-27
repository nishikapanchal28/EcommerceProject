package com.spring.service;

import java.util.List;

import com.spring.model.Product;

public interface ProductService {
	
	public void saveProduct(Product product);

	List<Product> listAllProducts();



	public Product getById(int id);

	public void deleteProduct(Product p);

	public void updateProduct(Product p);
}
