package com.spring.model;

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
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "product")
// Table Name: product
// primary key: id
// name,
public class Product implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -8400757431876965889L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@NotEmpty(message = "product name is mandatory")
	private String productname;
	@NotEmpty(message = "manufacturer name is mandatory")
	private String manufacturerename;
	@Min(value = 10)
	private double price;
	@Min(value = 5)
	private String quantity;
	@NotNull(message = "mfg date is mandatory")
	private Date mfg;
	private String description;
	@Transient
	private MultipartFile images;

	@ManyToOne
	@JoinColumn(name = "cid")
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

	public Date getMfg() {
		return mfg;
	}

	public void setMfg(Date mfg) {
		this.mfg = mfg;
	}

	public MultipartFile getImages() {
		return images;
	}

	public void setImages(MultipartFile images) {
		this.images = images;
	}
}
