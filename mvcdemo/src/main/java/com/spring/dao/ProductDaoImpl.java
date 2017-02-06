package com.spring.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.mvc.Product;
@Repository
public class ProductDaoImpl implements ProductDao{
	@Autowired
	private SessionFactory sessionFactory;
	public ProductDaoImpl(){
		System.out.println("creating productDaoimpl instance");
	}
 public Product saveProduct(Product product){
		System.out.println(product.getId());
  Session session=sessionFactory.openSession();

	session.save(product);
	session.flush();
	session.close();
	
	System.out.println(product.getId());
	return product;
 }
}
