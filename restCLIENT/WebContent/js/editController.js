app.controller('editController',function($scope,PersonService,$routParams){
	var id=$routeParams.id;
	  $scope.person=PersonService.getPersonById(id)	
	  .then(function(response){
		  $scope.persons=response.data;

		  console.log(response.data)
	
	  },function(response){
		  console.log(response.status)
	  }) 
	
})
