<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
</head>
<body ng-app="app"  ng-controller="ProductController">
	 <div class="container">
<div class="panel panel-default">
     <div class="panel-heading" style= min-height:10 style="background-color:DeepSkyBlue">
  <center><B>PRODUCT SPECIFICATIONS </B> </center></div>
       <div class="panel-body">
		<table class="table">
			<tr>
				<td>PRODUCT NAME:</td>
				<td>${product.productname }</td>
			</tr>
			
			<tr>
				<td>PRODUCT PRICE:</td>
				<td>${product.price }</td>
			</tr>
			<tr>
				<td>CATEGORY DETAILS:</td>
				<td>${product.category.categoryDetails }</td>
			</tr>
			<tr>
				<td>MANUFACTURING DATE:</td>
				<td>${product.mfg }</td>
			</tr>
			<tr>
			<td>ADD TO CART:</td>
			<td><a href="" ng-click="addToCart(${product.id })"><span class="glyphicon glyphicon-shopping-cart"></span></a></td>
			</tr>
		</table>
	</div>
	</div>
	</div>
	<script src="<c:url value="/resources/js/Controller.js"></c:url>"></script>
</body>
</html>
<%@ include file="fotter.jsp" %>