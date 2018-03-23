package com.ShoppingMania2.dao;

import java.util.List;

import com.ShoppingMania2.model.Category;

public interface CategoryDAO {

	public boolean addCategory(Category  category);
	public boolean updateCategory(Category  category);
	public boolean deleteCategory(Category  category);
	public Category getCategoryById(int cid);	
	public List<Category> getAllCategory();
}
