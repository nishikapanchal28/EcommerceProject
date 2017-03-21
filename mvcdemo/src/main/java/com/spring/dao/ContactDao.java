package com.spring.dao;

import java.util.List;

import com.spring.model.Contact;

public interface ContactDao {
	public void saveContact(Contact contact);

	public List<Contact> listAllContact();

}
