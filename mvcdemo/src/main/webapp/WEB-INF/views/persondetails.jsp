<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
  <form:form action="addPerson" commandName="person" class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-2" for="name">User name:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="name" placeholder="Enter user name"/>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="password">Password:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="password" placeholder="Enter password"/>
      </div>
    </div>
     <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox"> Remember me</label>
        </div>
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
<%@ include file ="fotter.jsp" %>