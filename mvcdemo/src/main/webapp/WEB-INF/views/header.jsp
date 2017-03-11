<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page isELIgnored="false" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>  
      <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
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
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <style>
    div.relative{
    position: relative;
   top:10px;
   
    
    }
    </style>
  </head>
<body><div class="relative">
<div class="container">
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
      
      <c:if test="${pageContext.request.userPrincipal.name!=null}">
      
<security:authorize access="hasRole('ROLE_USER')">
 <c:url var="cart" value="/getCart"></c:url> 
<li><a href="${cart }">cart</a>
 </security:authorize>


	<security:authorize access="hasRole('ROLE_ADMIN')">
	 <c:url var="addproduct" value="/admin/addproduct"></c:url>
    <li><a href="${addproduct }">Add New Product</a></li>   
     </security:authorize>

    
      
      <c:url var="listofproducts" value="/listofproducts"></c:url>
      
      <li><a href="${listofproducts}">View All Products</a>
     
      <li class="dropdown">
			<a href="" class="dropdown-toggle" data-toggle="dropdown">
                     Select by Category<b class="caret"></b></a>
			<ul class="dropdown-menu">
			
			<c:url var="url1" value="/productsByCategory?item=New Arrivals"></c:url>
			<li><a href="${url1}">New Arrivals</a></li>
			
			<c:url var="url2" value="/productsByCategory?item=Sales"></c:url>
			<li><a href="${url2}">Sales</a></li>
			
			<c:url var="url_3" value="/productsByCategory?item=General"></c:url>
			<li><a href="${url_3}">General </a></li>
			
			</ul>
			</li>
			</c:if>
			
			<c:if test="${pageContext.request.userPrincipal.name==null}">
			<c:url var="login" value="/login"></c:url>
			 <li><a href="${login }"><span class="glyphicon glyphicon-log-in"> </span>Login</a></li>
			
			 <c:url var="register" value="/registerCustomer"></c:url>
      <li><a href="${register}"><span class="glyphicon glyphicon-user"> </span>Register</a></li>
      
      </c:if>
      
     <li> <a>welcome ${pageContext.request.userPrincipal.name}</a></li>
     
      <c:if test="${pageContext.request.userPrincipal.name!=null}">
           <li><a href="j_spring_security_logout"><span class="glyphicon glyphicon-off"></span>Logout</a></li>
      </c:if>
      
    </ul>
  </div>
</nav>
</div>
</div>
</body>
</html>