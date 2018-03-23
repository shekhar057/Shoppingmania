package com.ShoppingMania2.daoImpl;

import javax.transaction.Transactional;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ShoppingMania2.dao.CategoryDAO;
import com.ShoppingMania2.model.Category;
 
@Repository("categoryDAO")

public class CategoryDAOImpl implements CategoryDAO{
	@Autowired
	SessionFactory sessionFactory;
	public CategoryDAOImpl(SessionFactory sessionFactory){
	this.sessionFactory=sessionFactory;
	}
	@Transactional
	public boolean addCategory(Category category) {
	Session session=sessionFactory.getCurrentSession();
	session.save(category);
	return true;
	}
	@Transactional
	public boolean updateCategory(Category category) {
	Session session=sessionFactory.getCurrentSession();
	session.update(category);
	return true;
	}
	@Transactional
	public boolean deleteCategory(Category category) {
	Session session=sessionFactory.getCurrentSession();
	session.delete(category);
	return true;
	}
	public Category getCategoryById(int cid) {
	Session session=sessionFactory.openSession();
	Category category=session.get(Category.class, cid);
	session.close();
	return category;
	}
	public List<Category> getAllCategory() {
	Session session=sessionFactory.openSession();
	List<Category> list=session.createQuery("from Category").list();
	session.close();
	return list;
	}
  
}

