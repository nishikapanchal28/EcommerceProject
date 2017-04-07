package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.niit.Dao.PersonDao;
import com.niit.Service.PersonService;
import com.niit.model.Person;

@RestController
public class PersonController {
	@Autowired
private PersonService personService;
	
/*@RequestMapping(value="/person",method=RequestMethod.POST)

//RequestBody - client to server - JSON to java object
//ResponseBody - server to client - Java object to JSON

public @ResponseBody Person savePerson(@RequestBody Person person){
	return personDao.addPerson(person);
}*/
@RequestMapping(value = "/user/", method = RequestMethod.GET)
public ResponseEntity<List<Person>> listAllUsers() {
    List<Person> users = personService.findAllUsers();
    if(users.isEmpty()){
        return new ResponseEntity<List<Person>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
    }
    return new ResponseEntity<List<Person>>(users, HttpStatus.OK);
}

/*@RequestMapping(value="/person/{personId}",method=RequestMethod.GET)
// ? - Any Type of Object 
public ResponseEntity<?> getPerson(@PathVariable(value="personId") int personId){
	Person person=personDao.getPerson(personId);
	if(person==null){
		Error error=new Error(1,"Person Id [" + personId + "]" + " doesn't exists");
		return new ResponseEntity<Error>(error,HttpStatus.NOT_FOUND);
	}
	return new ResponseEntity<Person>(person,HttpStatus.OK);
	
}

@RequestMapping(value="/person",method=RequestMethod.PUT)
public ResponseEntity<?> updatePerson(@@RequestBody Person person){
	Person currentPerson=personDao.getPerson(person.getId());
	if(currentPerson==null){
		  System.out.println("User with id " + id + " not found");
		  return new ResponseEntity<Error>(HttpStatus.NOT_FOUND);
	}
	Person updatedPerson=personDao.updatePerson(person);
	return new ResponseEntity<Person>(updatedPerson,HttpStatus.OK);
	
	
}

@RequestMapping(value="/person/{id}",method=RequestMethod.DELETE)
public ResponseEntity<?> deletePerson(@PathVariable int id){
	Person person=personDao.getPerson(id);
	if(person==null){

        System.out.println("Unable to delete. User with id " + id + " not found");
		return new ResponseEntity<Error>(HttpStatus.NOT_FOUND);
	}
	personDao.deletePerson(id);
	return new ResponseEntity<Void>(HttpStatus.OK);
}*/
}
