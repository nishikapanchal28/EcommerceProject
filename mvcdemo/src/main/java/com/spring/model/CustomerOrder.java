package com.spring.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class CustomerOrder {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
	private int orderid;
@OneToOne
@JoinColumn(name="customer_id")
private Customer customer;
@OneToOne
@JoinColumn(name="billingaddress_id")
private BillingAddress billingaddress;
@OneToOne
@JoinColumn(name="shippingaddress_id")
private ShippingAddress shippingaddress;
@OneToOne
@JoinColumn(name="cart_id")
private Cart cart;

public int getOrderid() {
	return orderid;
}
public void setOrderid(int orderid) {
	this.orderid = orderid;
}
public Customer getCustomer() {
	return customer;
}
public void setCustomer(Customer customer) {
	this.customer = customer;
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
public Cart getCart() {
	return cart;
}
public void setCart(Cart cart) {
	this.cart = cart;
}


}
