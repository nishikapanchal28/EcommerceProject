<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title></title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
<body>
 <div class="container">
  <form:form action="register" commandName="register"   class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-2" for="firstname">First name:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="firstname" placeholder="Enter first name"/>
      </div>
    </div>
      <div class="form-group">
      <label class="control-label col-sm-2" for="lastname">Last name:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="lastname" placeholder="Enter last name"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="email" placeholder="Enter email"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="mobile">Mobile:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="mobile" placeholder="Enter mobile number"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="enterpassword">create password:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="enterpassword" placeholder="Enter password"/>
      </div>
      </div>
      <div class="form-group">
      <label class="control-label col-sm-2" for="confirmpassword">confirm password:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="confirmpassword" placeholder="Re-Enter password"/>
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