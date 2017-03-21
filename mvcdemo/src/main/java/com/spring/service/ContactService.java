package com.spring.service;

import java.util.List;

import com.spring.model.Contact;

public interface ContactService {

	public  void saveContact(Contact contact);

	public List<Contact> listAllContact();

	
}
