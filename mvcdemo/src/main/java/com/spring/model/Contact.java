package com.spring.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.Email;

@Entity
public class Contact implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -3079688757786785611L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private String name;
	@Email
private String email;
private String comment;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getComment() {
	return comment;
}
public void setComment(String comment) {
	this.comment = comment;
}

}
