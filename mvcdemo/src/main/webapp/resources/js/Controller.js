var app= angular.module("app",[])
app.controlloer("ProductController",function($script, $http){
	$scope.addCartItem=function(productId){
		$http.put('http://localhost:8080/mvcdemo/all/addCartItem/'+ productId).sucess(function(){
			alert("product successfully added to cart")
		})
	}
})