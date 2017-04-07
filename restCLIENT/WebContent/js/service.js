app.factory('PersonService',function($http){
	var personService={}
	
	personService.getAllPersons=function(){
		return $http.get("http://localhost:9090/restCLIENT/person");
	}
	personService.savePerson=function(person){
		return $http.post("http://localhost:9090/restCLIENT/person",person);
	}
	personService.deletePerson=function(id){
		return $http.delete("http://localhost:9090/restCLIENT/person"+id);
	}
	personService.getPersonById=function(id){
		return $http.get("http://localhost:9090/restCLIENT/person"+id);
	}
	personService.updatePerson=function(person){
		return $http.update("http://localhost:9090/restCLIENT/person",person);
	}
	return  personService;
})
