package com.niit.Dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.tool.schema.extract.spi.SequenceInformation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.User;

@Repository("UserDao")
public class UserDaoImpl implements UserDao{
	@Autowired
	private SessionFactory sessionFactory;
	
	public UserDaoImpl(SessionFactory sessionFactory){
	this.sessionFactory= sessionFactory;
}
@Transactional
	public boolean save(User user) {
		// TODO Auto-generated method stub
		try {
			sessionFactory.getCurrentSession().save(user);
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
@Transactional
	public boolean update(User user) {
		// TODO Auto-generated method stub
		try {
			sessionFactory.getCurrentSession().update(user);
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
@Transactional
	public boolean delete(User user) {
		// TODO Auto-generated method stub
		try {
			sessionFactory.getCurrentSession().delete(user);
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public List<User> list() {
		// TODO Auto-generated method stub
		return (List<User>)sessionFactory.getCurrentSession().createQuery("from User").list();
	}

	public User authentication(String id, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	public User get(long id) {
		// TODO Auto-generated method stub
		try {
			sessionFactory.getCurrentSession().get(User.class, id);
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public boolean isUserExist(User user) {
		// TODO Auto-generated method stub
		return  get(user.getId())!=null;
	}
	
	
	
}
