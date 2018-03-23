package com.ShoppingMania2.dao;



import javax.transaction.Transactional;

import org.hibernate.Session;

import com.ShoppingMania2.model.UserDetails;

public interface UserDetailsDAO {
	public boolean addUserDetailsDAO(UserDetails userDetails);
	
}
