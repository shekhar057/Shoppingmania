package com.ShoppingMania.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;

import com.ShoppingMania.modal.Category;
import com.ShoppingMania.modal.Supplier;

public interface SupplierDAO {
	public boolean addSupplier(Supplier supplier);
	public boolean updateSupplier(Supplier supplier);
	public boolean deleteSupplier(Supplier supplier);
	public Supplier getSupplierById(int sid);	
	public List<Supplier> getAllSupplier();
}


