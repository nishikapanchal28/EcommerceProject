package com.niit.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.model.Person;
import com.spring.model.Product;

public class PersonDaoImpl implements PersonDao{
	@Autowired
	private SessionFactory sessionFactory;
	public Person addPerson(Person person) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(person);
		return person;
	}

	public Person getPerson(int id) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().get(Person.class, id);
		return person;
	}

	public Person updatePerson(Person person) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(Person.class);
		return person;
	}

	public void deletePerson(int id) {
		// TODO Auto-generated method stub
	sessionFactory.getCurrentSession().delete(Person.class);
	}
	
}
