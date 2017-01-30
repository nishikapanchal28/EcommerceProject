package com.spring.mvc;

public class Product {
private String productname;
private String manufacturerename;
private String price;
private String quantity;
private String totalPrice;

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
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public String getQuantity() {
	return quantity;
}
public void setQuantity(String quantity) {
	this.quantity = quantity;
}


}
