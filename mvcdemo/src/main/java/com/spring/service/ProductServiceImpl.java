package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.ProductDao;
import com.spring.model.Product;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao productDao;

	public ProductServiceImpl() {
		System.out.println("creating productseviceimpl ");
	}
@Override
	public void saveProduct(Product product) {
		 productDao.saveProduct(product);
	}
@Override
	public List<Product> listAllProducts() {
		return productDao.listAllProducts();
	}


	@Override
	public Product getById(int id) {
		return productDao.getById(id);
		
	}

	@Override
	public void deleteProduct(Product p) {
		productDao.deleteProduct(p);
		
	}

	@Override
	public void updateProduct(Product p) {
	productDao.updateProduct(p);
		
	}
}