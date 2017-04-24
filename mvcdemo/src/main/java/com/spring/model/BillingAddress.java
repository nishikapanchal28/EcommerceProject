package com.spring.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;
@Entity
public class BillingAddress implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id ;
	@NotEmpty(message="enter apartment number")
	private int apartmentnumber;
	@NotEmpty(message="enter street name ")
	private String streetname;
	@NotEmpty(message="enter city")
	private String city;
	@NotEmpty(message="enter state")
	private String state;
	@NotEmpty(message="enter country")
	private String country;
	@NotEmpty(message="enter zipcode")
	private String zipcode;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getApartmentnumber() {
		return apartmentnumber;
	}
	public void setApartmentnumber(int apartmentnumber) {
		this.apartmentnumber = apartmentnumber;
	}
	public String getStreetname() {
		return streetname;
	}
	public void setStreetname(String streetname) {
		this.streetname = streetname;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

}
