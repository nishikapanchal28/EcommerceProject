package com.spring.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Contact;
@Repository
@Transactional
public class ContactDaoImpl implements ContactDao{
@Autowired
private SessionFactory sessionFactory;
	@Override
	public void saveContact(Contact contact) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(contact);
	}


}
