package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.ContactDao;
import com.spring.model.Contact;
@Service
public class ContactServiceImpl implements ContactService{
@Autowired
private ContactDao contactdao;
	
	public void saveContact(Contact contact) {
		// TODO Auto-generated method stub
		contactdao.saveContact(contact);
	}

	@Override
	public List<Contact> listAllContact() {
		// TODO Auto-generated method stub
		return contactdao.listAllContact();
	}

	

}
