package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.CategoryDao;
import com.spring.model.Category;

@Service
public class CategoryServiceImpl implements CategoryService{
@Autowired
private CategoryDao categoryDao;
public List<Category> getCategories() {
	return categoryDao.getCategories();
}
}