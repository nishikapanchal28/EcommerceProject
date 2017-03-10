<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body ng-app="app" ng-controller="ProductController">
<div ng-init="getCart(${cartId })">
<table class="table table-striped">
<thead>
<tr><th>Name</th><th>Quantity</th><th>Total Price</th>
</tr>
</thead>

<tr ng-repeat="cartItem in cart.cartItem">

<td><a href="" class="btn btn-danger" pull-left ng-click="clearCart()"></a>
<span class="glyphicon glyphicon-remove"></span></td>

<td><a href="" class="btn btn-success" pull-right></a>
<span class="glyphicon glyphicon-shopping-cart">checkout</span></td>

<td>{{cartItem.product.productname}}</td>
<td>{{cartItem.quantity}}</td>
<td>{{cartItem.totalPrice}}</td>
<td><a href="" class="label label-danger" pull-left ng-click="removeFromCart(CartItem_Id)"></a>
<span class="glyphicon glyphicon-remove"></span></td>
</tr>

</table>
Total Price : {{calculateGrandTotal()}}
</div>
<script src="<c:url value="/resources/js/Controller.js"></c:url>"></script>
</body>
</html>