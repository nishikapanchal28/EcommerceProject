package com.niit.shoppingcart.Dao;

import java.util.List;

import com.niit.shoppingcart.model.Product;

public interface ProductDao {

	public void addProduct(Product product);

	public List<Product> listAllProducts();

	Product getById(int id);
	
	public void deleteProduct(Product p);

	public void updateProduct(Product p);

	


	}


