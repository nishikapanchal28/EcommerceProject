package com.spring.mvc;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="product")
//Table Name: product
//primary key: id
// name,
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
private String productname;
private String manufacturerename;
private double price;
private String quantity;
private String totalPrice;
@ManyToOne
@JoinColumn(name="cid")
private Category category;

public Category getCategory() {
	return category;
}
public void setCategory(Category category) {
	this.category = category;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTotalPrice() {
	return totalPrice;
}
public void setTotalPrice(String totalPrice) {
	this.totalPrice = totalPrice;
}
public String getProductname() {
	return productname;
}
public void setProductname(String productname) {
	this.productname = productname;
}
public String getManufacturerename() {
	return manufacturerename;
}
public void setManufacturerename(String manufacturerename) {
	this.manufacturerename = manufacturerename;
}

public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public String getQuantity() {
	return quantity;
}
public void setQuantity(String quantity) {
	this.quantity = quantity;
}


}
