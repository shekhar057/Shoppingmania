package com.ShoppingMania2.dao;

import java.util.List;

import com.ShoppingMania2.model.Product;

public interface ProductDAO {
	public boolean insertOrUpdateProduct(Product product);
	public Product getProduct(int id);
	public List<Product> getAllProducts();
	public List<Product> getProductsByCategory(int c_id);
	public boolean deleteProduct( Product product);
	

}
