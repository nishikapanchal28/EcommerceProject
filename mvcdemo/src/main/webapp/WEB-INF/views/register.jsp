<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %> 
   <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
body{
background-image: url("resources/images/Mackenzie-Leather-Bags-Goods-Product-Photography-13.jpg");
   background-repeat: no-repeat;
   
  background-size:cover;
}
</style>
</head>
<body>
<div class="container">

<form:form action="registerdetails" commandName="customer" method="POST" class="form-horizontal">
 <div class="panel panel-default">
     <div class="panel-heading" style="background-color:DeepSkyBlue;">
  YOUR PERSONAL DETAILS </div>
       <div class="panel-body">
<div class="form-group">
      <label class="control-label col-sm-2" for="firstname"> first name  </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="firstname" placeholder="Enter the first name"/>
        <form:errors path="firstname"></form:errors>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="lastname">last name</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="lastname" placeholder="Enter the last name "/>
          <form:errors path="lastname"></form:errors>
      </div>
      </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email"> email </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="email"  placeholder="Enter email"/>
                  <form:errors path="lastname"></form:errors>
        
      </div>
    </div>
      <div class="form-group">
      <label class="control-label col-sm-2" for="phonenumber">phone number   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="phonenumber"  placeholder="Enter phone number "/>
                          <form:errors path="phonenumber"></form:errors>
        
      </div>
    </div>
    </div>
    </div>
    <div class="panel panel-default">
     <div class="panel-heading" style="background-color:DeepSkyBlue;">
  YOUR LOGIN DETAILS </div>
       <div class="panel-body">
      <div class="form-group">
      <label class="control-label col-sm-2" for="username">user name   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="users.username"  placeholder="Enter user name "/>
          <form:errors path="users.username"></form:errors>
      </div>
    </div>
 <div class="form-group">
      <label class="control-label col-sm-2" for="password">password   </label>
      <div class="col-sm-10">
        <form:input type="password" class="form-control" path="users.password"  placeholder="Enter password"/>
                  <form:errors path="users.password"></form:errors>
        
      </div>
    </div>
    </div>
    </div>
     <div class="panel panel-default">
     <div class="panel-heading" style="background-color:DeepSkyBlue;">
   BILLING ADDRESS DETAILS </div>
       <div class="panel-body">
<div class="form-group">
      <label class="control-label col-sm-2" for="apartmentnumber">apartment number   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingaddress.apartmentnumber"  placeholder="Enter quantity"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="streetname">street name   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingaddress.streetname"  placeholder="Enter quantity"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="city"> city   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingaddress.city"  placeholder="Enter quantity"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="state"> state   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingaddress.state"  placeholder="Enter quantity"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="country"> country   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingaddress.country"  placeholder="Enter quantity"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="zipcode"> zip code   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="billingaddress.zipcode"  placeholder="Enter quantity"/>
      </div>
      </div>
    </div>
    </div>
     <div class="panel panel-default">
     <div class="panel-heading" style="background-color:DeepSkyBlue;">
     SHIPPING ADDRESS DETAILS </div>
        <div class="panel-body">
    <div class="form-group">
      <label class="control-label col-sm-2" for="apartmentnumber">apartment number   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingaddress.apartmentnumber"  placeholder="Enter quantity"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="streetname">street name   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingaddress.streetname"  placeholder="Enter quantity"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="city"> city   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingaddress.city"  placeholder="Enter quantity"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="state"> state   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingaddress.state"  placeholder="Enter quantity"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="country"> country   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingaddress.country"  placeholder="Enter quantity"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="zipcode"> zip code   </label>
      <div class="col-sm-10">
        <form:input class="form-control" path="shippingaddress.zipcode"  placeholder="Enter quantity"/>
      </div>
      </div>
    </div></div>
<div class="form-group">
      <label class="control-label col-sm-2"></label>
      <div class="col-sm-10">
<input type="submit" value="SUBMIT" class="btn btn-info">
<input type="submit" value="CANCEL" class="btn btn-info">
</div>
</div>
    </form:form>
</div>
</body>
</html>
<%@ include file="fotter.jsp" %>