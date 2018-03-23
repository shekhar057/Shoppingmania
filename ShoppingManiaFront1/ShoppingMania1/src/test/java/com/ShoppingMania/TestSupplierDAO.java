package com.ShoppingMania;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ShoppingMania2.dao.SupplierDAO;
import com.ShoppingMania2.model.Supplier;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)

public class TestSupplierDAO {
	static AnnotationConfigApplicationContext context;
	static Supplier supplier;
	@BeforeClass
	public static void setup(){
		context=new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		supplier=new Supplier();
		supplier.setS_Name("Test");
	}

	@Test
	public void test1AddSupplier() {
		SupplierDAO supplierDAO=(SupplierDAO)context.getBean("supplierDAO");
		assertEquals(true, supplierDAO.addSupplier(supplier));
	}

	@Test
	public void test2UpdateSupplier() {
		SupplierDAO supplierDAO=(SupplierDAO)context.getBean("supplierDAO");
		supplier.setS_Name("test2");
		assertEquals(true, supplierDAO.updateSupplier(supplier));	
	}

	@Test
	public void test3GetSupplierById() {
	SupplierDAO supplierDAO=(SupplierDAO)context.getBean("supplierDAO");
		assertNotEquals(null, supplierDAO.getSupplierById(supplier.getS_id()));
	}

	@Test
	public void test5GetAllSupplier() {
		SupplierDAO supplierDAO=(SupplierDAO)context.getBean("supplierDAO");
		assertNotEquals(null, supplierDAO.getAllSupplier());		
	}
	

	
	@Test
	public void test4DeleteSupplier() {
		SupplierDAO supplierDAO=(SupplierDAO)context.getBean("supplierDAO");
		assertEquals(true, supplierDAO.deleteSupplier(supplier));	
		}

	@AfterClass
	public static void TearDAO(){
		context.close();
	}

}
