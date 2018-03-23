package com.ShoppingMania2.dao;

import java.util.List;

import com.ShoppingMania2.model.Supplier;

public interface SupplierDAO {

	public boolean addSupplier(Supplier  supplier);
	public boolean updateSupplier(Supplier  supplier);
	public boolean deleteSupplier(Supplier  supplier);
	public Supplier getSupplierById(int cid);	
	public List<Supplier> getAllSupplier();
}
