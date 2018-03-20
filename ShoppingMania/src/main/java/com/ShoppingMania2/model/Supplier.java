 package com.ShoppingMania2.model;
 
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Supplier {

@Id
@GeneratedValue

private int s_id;
private String s_Name;
public int getS_id() {
	return s_id;
}
public void setS_id(int s_id) {
	this.s_id = s_id;
}
public String getS_Name() {
	return s_Name;
}
public void setS_Name(String s_Name) {
	this.s_Name = s_Name;
}

}
