app.controller('PersonController',function($scope, $location, PersonService){
	function getAllPersons(){
	  $scope.persons=PersonService.getAllPersons()
	  .then(function(response){
		  console.log(response.status)
		  console.log(response.data)
		  $scope.persons=response.data;
	  },function(response){
		  console.log(response.status)

	  })
	  
	}
	$scope.savePerson=function(){
		PersonService.savePerson($scope.person)
	  .then(function(response){
		  console.log(response.status)
		  console.log(response.data)
	$scope.result="successfully inserted";
	  },function(response){
		  console.log(response.status)
		  console.log(response.data)
	  }
	  )
}
	$scope.deletePerson=function(id){
		PersonService.deletePerson(id)
	  .then(function(response){
		  console.log(response.status)
			getAllPersons();
	  },function(response){
		  console.log(response.status)
		
	  }
	  )
}
	getAllPersons();
})