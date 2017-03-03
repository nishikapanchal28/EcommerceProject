package com.spring.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity

public class Cart implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 6905166810498424713L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private double grandTotal;
	@OneToOne
	private Customer customer;
	@OneToMany(mappedBy="cart" , cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	private List<CartItem> cartItem;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;

	}
	public List<CartItem> getCartItem() {
		return cartItem;
	}
	public void setCartItem(List<CartItem> cartItem) {
		this.cartItem = cartItem;
	}

}

