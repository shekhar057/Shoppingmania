package com.ShoppingMania.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;

import com.ShoppingMania.modal.UserDetails;

public interface UserDetailsDAO {
	public boolean addUserDetailsDAO(UserDetails userDetails);
	
}
