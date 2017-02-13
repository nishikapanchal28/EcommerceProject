package com.spring.dao;

import java.util.List;

import com.spring.mvc.Product;

public interface ProductDao {
public void saveProduct(Product product);
List<Product> getAllProducts();
Product getProductById(int id);
void deleteProduct(int id);
public Product getById(int id);
public void deleteProduct(Product p);
}