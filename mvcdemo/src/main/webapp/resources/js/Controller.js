var app= angular.module('app',[]);
app.controller('ProductController',function($scope, $http){
	$scope.addToCart=function(productId){
		$http.put('http://localhost:9090/mvcdemo/addCartItem/'+productId).success(function(){
			alert("product successfully added to cart");
		});
	}
});

$scope.getCart=function(CartId){
	$scope.cartId=cartId;
	console.log("cart id is "+ CartId)
	$http.get('http://localhost:9090/mvcdemo/getCartItem/'+ CartId).success(function(){
		$scope.cart=data
	})
}


$scope.removeFromCart=function(cartItemId){
console.log('cartitem to be removed is ' + cartItemId);
$http.put('http://localhost:9090/mvcdemo/removeCartItem/'+cartItemId).success(function(){
$scope.getCart($scope.cartId)
})
}

$scope.clearCart=function(){
$http.put('http://localhost:9090/mvcdemo/removeAllCartItems/'+$scope.cartId).success(function(){
$scope.getCart($scope.cartId)
})
}

$scope.calculateGrandTotal=function(){
var grandTotal=0.0;
for(var i=0;i<$scope.cart.cartItems.length;i++){
grandTotal=grandTotal+$scope.cart.cartItems[i].totalPrice;
}
return grandTotal;
}
