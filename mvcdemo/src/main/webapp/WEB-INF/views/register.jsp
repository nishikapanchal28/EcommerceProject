<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>register page </title>
</head>
<body>
 <div class="container">
  <form:form action="addPerson" commandName="person" class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-2" for="firstname">Firstname:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="firstname" placeholder="Enter first name"/>
      </div>
    </div>
    
      <div class="form-group">
      <label class="control-label col-sm-2" for="lastname">Lastname:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="lastname" placeholder="Enter last name"/>
      </div>
    </div>
   
    <div class="form-group">
      <label class="control-label col-sm-2" for="lastname">Email:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="lastname" placeholder="Enter last name"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="lastname">Mobile:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="lastname" placeholder="Enter last name"/>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2" for="lastname">create password:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="lastname" placeholder="Enter last name"/>
      </div>
    </div>
    
    </form:form>
</body>
</html>
<%@ include file="fotter.jsp" %>