package com.niit.shoppingcart.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.shoppingcart.Dao.CategoryDao;
import com.niit.shoppingcart.model.Category;
@Service

public class CategoryServiceImpl implements CategoryService{
	@Autowired
	private CategoryDao categoryDao;
	
	public List<Category> getCategories() {
		
		return categoryDao.getCategories();
	}

}
