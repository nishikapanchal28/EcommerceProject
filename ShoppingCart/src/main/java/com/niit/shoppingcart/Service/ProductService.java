package com.niit.shoppingcart.Service;

import java.util.List;

import com.niit.shoppingcart.model.Product;

public interface ProductService {
	public void addProduct(Product product);

	public List<Product> listAllProducts();

	Product getById(int id);

	public void deleteProduct(Product p);

	public void updateProduct(Product product);


	
}
