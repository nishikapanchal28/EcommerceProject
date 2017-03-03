package com.niit.shoppingcart.Dao;


import java.util.List;

import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao{
@Autowired
private SessionFactory sessionFactory;

public ProductDaoImpl(SessionFactory sessionFactory){
	super();
	this.sessionFactory=sessionFactory;
}
@Override
public void addProduct(Product product){
	sessionFactory.getCurrentSession().save(product);
}

@Override
public List<Product> listAllProducts() {
	// TODO Auto-generated method stub
	return (List<Product>)sessionFactory.getCurrentSession().createQuery("from Product").list();
}
@Override
public Product getById(int id){
	return sessionFactory.getCurrentSession().get(Product.class, id);
}

@Override
public void deleteProduct(Product p) {
	sessionFactory.getCurrentSession().delete(p);
}

@Override
public void updateProduct(Product p) {
	sessionFactory.getCurrentSession().update(p);
	
}


}
