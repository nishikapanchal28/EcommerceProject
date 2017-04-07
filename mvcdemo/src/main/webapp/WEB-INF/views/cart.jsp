<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>


<script src="<c:url value="resources/js/controller.js"></c:url>"></script>


<style>
body{
background-image: url("resources/images/15377511-shopping-cart-in-the-parking-lot-of-a-supermarket-Stock-Photo.jpg");
   background-repeat: no-repeat;
   
  background-size:cover;
}
   div.panel{
 
      background: rgba(130,130,130,.9);
}
#myInput {
 
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}
div.panel{
 
      background: rgba(130,130,130,.9);
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 5px;
 
}
img{
  border-radius: 50%;
  
}
#myTable tr {
  border-bottom: 1px solid #ddd;
  
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
</style>
</head>
<body ng-app="app" ng-controller="ProductController">
 <div >
<div ng-init="getCart(${cartId })">
<div class="container">
	 <div class="panel panel-default" class="sansserif">
     <div class="panel-heading" style="background-color:DeepSkyBlue;">
  <center><B>YOUR CART</B></center></div>
       <div class="panel-body">
<ng-repeat="cartItem in cart.cartItem">
<a href="" class="pull-left"   ng-click="clearCart()">
<span class="btn btn-danger">Clear Cart</span></a>
<a href="" class="pull-right" >
<span class="btn btn-success" >Checkout</span></a>
<table id="myTable">
<tr><th>Name</th>
<th>Quantity</th>
<th>Total Price</th>
<th>Remove Product</th>
</tr>
<tr>
<td>{{cartItem.product.productname}}</td>
<td>{{cartItem.quantity}}</td>
<td>{{cartItem.totalPrice}}</td>
<td><a href="" class="pull-left"  ng-click="removeFromCart(CartItem_Id)">
<span class="label label-danger" class="glyphicon glyphicon-remove">Remove</span></a></td>
</tr>
</table>
<tr><td>Total Price : {{calculateGrandTotal()}}</td></tr>
</div>
</div> 
</div>
</div>
</div>
</body>
</html>
<%@ include file="fotter.jsp" %>
