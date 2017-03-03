package com.niit.shoppingcart.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.Dao.ProductDao;
import com.niit.shoppingcart.model.Product;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDao productDao;

	public void addProduct(Product product) {
		productDao.addProduct(product);

	}

	@Override
	public List<Product> listAllProducts() {
		// TODO Auto-generated method stub
		return productDao.listAllProducts();
	}
@Override
public Product getById(int id){
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