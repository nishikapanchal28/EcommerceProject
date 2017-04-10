package com.niit.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.model.User;
@Repository
public interface UserDao {
	public boolean save(User user);
	public boolean update(User user);
	public boolean delete(User user);
	public List<User> list();
	public User get(long id);
	public User authentication(String id, String password);
	public boolean isUserExist(User user);
	
}
