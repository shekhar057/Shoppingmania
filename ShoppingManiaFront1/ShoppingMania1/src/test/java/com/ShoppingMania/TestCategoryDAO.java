package com.ShoppingMania;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ShoppingMania2.dao.CategoryDAO;
import com.ShoppingMania2.model.Category;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class TestCategoryDAO {
	static AnnotationConfigApplicationContext context;
	static Category category;
	@BeforeClass
	public static void setup(){
		context=new AnnotationConfigApplicationContext();
		context.scan("com");
		context.refresh();
		category=new Category();
		category.setC_Name("Test");
	}
	@Test
	public void test1AddCategory() {
		CategoryDAO categoryDAO=(CategoryDAO)context.getBean("categoryDAO");
		assertEquals(true, categoryDAO.addCategory(category));
	}

	@Test
	public void test2UpdateCategory() {
		CategoryDAO categoryDAO=(CategoryDAO)context.getBean("categoryDAO");
		category.setC_Name("test2");
		assertEquals(true, categoryDAO.updateCategory(category));	
	}

	@Test
	public void test4DeleteCategory() {
		CategoryDAO categoryDAO=(CategoryDAO)context.getBean("categoryDAO");
		assertEquals(true, categoryDAO.deleteCategory(category));	
		
	}

	@Test
	public void test3GetCategoryById() {
		CategoryDAO categoryDAO=(CategoryDAO)context.getBean("categoryDAO");
		assertNotEquals(null, categoryDAO.getCategoryById(category.getC_id()));
	}

	@Test
	public void test5GetAllCategory() {
		CategoryDAO categoryDAO=(CategoryDAO)context.getBean("categoryDAO");
		assertNotEquals(null, categoryDAO.getAllCategory());		
	}
	@AfterClass
		public static void TearDAO(){
			context.close();
		}
}
