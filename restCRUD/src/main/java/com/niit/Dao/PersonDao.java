package com.niit.Dao;

import java.util.List;

import com.niit.model.Person;

public interface PersonDao {
	Person addPerson(Person person);
	Person getPerson(int id);
	Person updatePerson(Person person);
	void deletePerson(int id);
}
