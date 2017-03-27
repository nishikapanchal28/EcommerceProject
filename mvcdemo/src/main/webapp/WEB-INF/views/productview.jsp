<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<style>
img{
  border-radius: 50%;
}
body{
background-image: url("resources/images/Mackenzie-Leather-Bags-Goods-Product-Photography-13.jpg");
   background-repeat: no-repeat;
   
  background-size:cover;
}
div.panel{
 
      background: rgba(130,130,130,.5);
}
tr,td{color:white;}
</style>
</head>
<body ng-app="app"  ng-controller="ProductController">
<div class="container">
	 <div class="panel panel-default" class="sansserif">
     <div class="panel-heading" style="background-color:DeepSkyBlue;">
  <center><B>PRODUCT SPECIFICATIONS</B></center></div>
       <div class="panel-body">
		<table class="table">
			<tr>
				<td>PRODUCT NAME</td>
				<td>${product.productname }</td>
			</tr>
			<tr>
			<td>
			PRODUCT IMAGE
			</td>
			<td>
			<c:url var="src" value="D:/images/${p.id}.png"></c:url>
			<img src="${pageContext.request.contextPath}/resources/images/${p.id}.png" height="60" width="60"/>
			</td>
			
			<tr>
				<td>PRODUCT PRICE</td>
				<td>${product.price }</td>
			</tr>
			<tr>
				<td>CATEGORY DETAILS</td>
				<td>${product.category.categoryDetails }</td>
			</tr>
			<tr>
				<td>MANUFACTURING DATE</td>
				<td>${product.mfg }</td>
			</tr>
			<security:authorize access="hasRole('ROLE_USER')">
			<tr>
			<td>ADD TO CART</td>
			<td><a href="" ng-click="addToCart(${product.id })"><span class="glyphicon glyphicon-shopping-cart"  style="font-size:20px"></span></a></td>
			</tr>
			</security:authorize>
		</table>
	</div>
	</div>
	</div>
	<script src="<c:url value="/resources/js/Controller.js"></c:url>"></script>
</body>
</html>
<%@ include file="fotter.jsp" %>