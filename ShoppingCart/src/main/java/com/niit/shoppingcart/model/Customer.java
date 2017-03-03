package com.niit.shoppingcart.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.Valid;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Customer {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
@NotEmpty(message="mandatory")
private String firstname;
@NotEmpty(message="mandatory")
private String lastname;
@NotEmpty(message="mandatory")
private String email;
@NotEmpty(message="mandatory")
private String phonenumber;
@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="user_id")
@Valid
private Users users;
@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="cart_id")
private Cart cart;
@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="billingaddress_id")
@Valid
private BillingAddress billingaddress;
@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="shippingaddress_id")
@Valid
private ShippingAddress shippingaddress;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhonenumber() {
	return phonenumber;
}
public void setPhonenumber(String phonenumber) {
	this.phonenumber = phonenumber;
}
public Users getUsers() {
	return users;
}
public void setUsers(Users users) {
	this.users = users;
}
public Cart getCart() {
	return cart;
}
public void setCart(Cart cart) {
	this.cart = cart;
}
public BillingAddress getBillingaddress() {
	return billingaddress;
}
public void setBillingaddress(BillingAddress billingaddress) {
	this.billingaddress = billingaddress;
}
public ShippingAddress getShippingaddress() {
	return shippingaddress;
}
public void setShippingaddress(ShippingAddress shippingaddress) {
	this.shippingaddress = shippingaddress;
}


}
