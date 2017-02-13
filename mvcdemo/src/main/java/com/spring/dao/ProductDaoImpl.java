package com.spring.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.mvc.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;

	public ProductDaoImpl() {
		System.out.println("creating productDaoimpl instance");
	}

	public void saveProduct(Product product) {
		/*System.out.println(product.getId());
		Session session = sessionFactory.openSession();
		System.out.println(session);
		session.save(product); // insert into product values (next.val,.....)
		session.flush();
		session.close();
		System.out.println(product.getId());*/
		sessionFactory.getCurrentSession().save(product);
	}

	public List<Product> getAllProducts() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Product");
		List<Product> products = query.list();
		session.close();
		return products;
	}

	public Product getProductById(int id) {
		Session session = sessionFactory.openSession();
		// select * from product where id=34
		Product product = (Product) session.get(Product.class, id);
		session.close();
		return product;
	}
	public void deleteProduct(int id){
		Session session=sessionFactory.openSession();
		Product product = (Product) session.get(Product.class, id);
		session.delete(product);
		session.flush();
		session.close();
	}

	@Override
	public Product getById(int id) {
		return sessionFactory.getCurrentSession().get(Product.class, id);
	}

	@Override
	public void deleteProduct(Product p) {
		sessionFactory.getCurrentSession().delete(p);
		
	}
}
