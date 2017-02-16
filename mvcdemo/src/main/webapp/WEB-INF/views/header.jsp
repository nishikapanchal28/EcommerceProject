<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page isELIgnored="false" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
  </head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" >PROJECT</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active">
      <li><a href="home">Home</a></li>
      <li><a href="contact">Contact us</a></li>
      <li><a href="about">About us</a></li>

      <li><a href="productdetails">Add New Product</a></li>
      <li><a href="listofproducts">View All Products</a>
      <li><a href="getpersondetails"><span class="glyphicon glyphicon-user"></span>Login</a></li>
      <li><a href="getregistrationdetails"><span class="glyphicon glyphicon-log-in"></span>Register</a></li>
      <li class="dropdown">
			<a href="" class="dropdown-toggle" data-toggle="dropdown">
                     Select by Category<b class="caret"></b></a>
			<ul class="dropdown-menu">
			<c:url var="url1" value="/productsByCategory?searchCondition=New Arrivals"></c:url>
			<li><a href="${url1}">New Arrivals</a></li>
			<c:url var="url2" value="/productsByCategory?searchCondition=Sales"></c:url>
			<li><a href="${url2}">Sales</a></li>
			
			<c:url var="url_3" value="/productsByCategory?searchCondition=Genreal"></c:url>
			<li><a href="${url_3}">General </a></li>
			
			
			</ul>
			</li>
    </ul>
  </div>
</nav>
</body>
</html>