<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %> 
   <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
<body>
<div class="container">
<c:url value="/addproduct" var="url"></c:url>
<form:form action="${url }" commandName="product" class="form-horizontal">
<div class="form-group">
      <label class="control-label col-sm-2" for="productname">Product Name:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="productname" placeholder="Enter the name of product"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="price">Price:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="price" placeholder="Enter the price of product"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="manufacturerename">Manufacturer Name:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="manufacturerename"  placeholder="Enter the name of manufacturer"/>
      </div>
    </div>
      <div class="form-group">
      <label class="control-label col-sm-2" for="quantity">Quantity:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="quantity"  placeholder="Enter quantity"/>
      </div>
    </div>
      <div class="form-group">
      <label class="control-label col-sm-2"></label>
      <div class="col-sm-10">
      <input type="submit" value="submit">  
      </div>
    </div>
    </form:form>
</div>
</body>
</html>
<%@ include file="fotter.jsp" %>