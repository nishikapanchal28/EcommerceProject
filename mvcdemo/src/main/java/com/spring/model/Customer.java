package com.spring.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Transient;
import javax.validation.Valid;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Customer implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@NotEmpty(message="enter first name")		
	private String firstname;
	@NotEmpty(message="enter last name ")
	private String lastname;
	@NotEmpty(message="enter your email")
	@Email(message="provide a valid email-id")
	private String email;
	@NotEmpty(message="enter phone number")
	@Length(max=10, min=10)
	private int phonenumber;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="user_id")
	@Valid
	private Users users;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="cart_id")
	@JsonIgnore
	private Cart cart;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="billingaddress_id")
	@Valid
	private BillingAddress billingaddress;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="shippingaddress_id")
	@Valid
	private ShippingAddress shippingaddress;
	@Transient
	private MultipartFile personimg;
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
	public int getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(int phonenumber) {
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
	public MultipartFile getPersonimg() {
		return personimg;
	}
	public void setPersonimg(MultipartFile personimg) {
		this.personimg = personimg;
	}



	}


