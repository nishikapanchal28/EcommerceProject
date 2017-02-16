package com.spring.dao;

import java.util.List;

import com.spring.model.Product;

public interface ProductDao {
public void saveProduct(Product product);
List<Product>ListAllProducts();

public Product getById(int id);
public void deleteProduct(Product p);
public void updateProduct(Product p);
}