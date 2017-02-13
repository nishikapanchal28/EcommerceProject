package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.ProductDao;
import com.spring.mvc.Product;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao productDao;

	public ProductServiceImpl() {
		System.out.println("creating productseviceimpl ");
	}

	public void saveProduct(Product product) {
		 productDao.saveProduct(product);
	}

	public List<Product> getAllProducts() {
		return productDao.getAllProducts();
	}

	public Product getProductById(int id) {
		return productDao.getProductById(id);
	}
	public void deleteProduct(int id){
		productDao.deleteProduct(id);
	}

	@Override
	public Product getById(int id) {
		return productDao.getById(id);
		
	}

	@Override
	public void deleteProduct(Product p) {
		productDao.deleteProduct(p);
		
	}
}