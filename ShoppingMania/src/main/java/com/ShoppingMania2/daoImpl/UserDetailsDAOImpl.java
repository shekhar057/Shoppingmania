package com.ShoppingMania2.daoImpl;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ShoppingMania2.dao.UserDetailsDAO;
import com.ShoppingMania2.model.UserDetails;

@Repository("userDetailsDAO")
public class UserDetailsDAOImpl implements UserDetailsDAO{

	@Autowired
	SessionFactory sessionFactory; 
	
	public UserDetailsDAOImpl(SessionFactory sessionFactory){
		this.sessionFactory =sessionFactory;
	}
	@Transactional
	public boolean addUserDetailsDAO(UserDetails userDetails) {
		Session session=sessionFactory.getCurrentSession();
		session.save(userDetails);
		return true;
	}

}
