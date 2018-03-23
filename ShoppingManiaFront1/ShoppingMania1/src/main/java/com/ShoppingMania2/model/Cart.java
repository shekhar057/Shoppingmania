package com.ShoppingMania2.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Cart {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private	int id;
	@ManyToOne
private	Product pro;
	@ManyToOne
private UserDetails user;
private	String status;
private	int quantity;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public Product getPro() {
	return pro;
}
public void setPro(Product pro) {
	this.pro = pro;
}public String getStatus() {
	return status;
}
public UserDetails getUser() {
	return user;
}
public void setUser(UserDetails user) {
	this.user = user;
}
public void setStatus(String status) {
	this.status = status;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
}
