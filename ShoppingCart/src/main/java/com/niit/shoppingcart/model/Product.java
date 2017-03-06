package com.niit.shoppingcart.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="product")
public class Product implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 456224624777189465L;
@Id	
@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
private String productname;
private double price;
private String quantity;
private String description;
private Date mfg;
@Transient
private MultipartFile images;
@ManyToOne
@JoinColumn(name="cid")
private Category category;


public Category getCategory() {
	return category;
}
public void setCategory(Category category) {
	this.category = category;
}
public MultipartFile getImages() {
	return images;
}
public void setImages(MultipartFile images) {
	this.images = images;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getProductname() {
	return productname;
}
public void setProductname(String productname) {
	this.productname = productname;
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
public Date getMfg() {
	return mfg;
}
public void setMfg(Date mfg) {
	this.mfg = mfg;
}

}

