app.controller('editController',function($scope,PersonService){
	  $scope.editPerson=function getPersonById(id){
		  PersonService.getPersonById(id)
	  .then(function(response){
		  console.log(response.status)
		  console.log(response.data)
		  $scope.persons=response.data;
	  },function(response){
		  console.log(response.status);  
	  }) 
	}
})