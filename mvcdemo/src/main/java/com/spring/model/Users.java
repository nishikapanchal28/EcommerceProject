package com.spring.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Users implements Serializable{

	private static final long serialVersionUID = -1519926193389381058L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
	@NotEmpty(message="enter username")
private String username;
	@NotEmpty(message="enter password")
private String password;
private boolean enabled=true;
@OneToOne(mappedBy="users")
private Customer customer;

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public boolean isEnabled() {
	return enabled;
}
public void setEnabled(boolean enabled) {
	this.enabled = enabled;
}
public Customer getCustomer() {
	return customer;
}
public void setCustomer(Customer customer) {
	this.customer = customer;
}

}


