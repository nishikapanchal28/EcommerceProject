<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
      <form class="navbar-form navbar-left">
  <div class="input-group">
    <input type="text" class="form-control" placeholder="Search">
    <div class="input-group-btn">
      <button class="btn btn" type="submit">
        <i class="glyphicon glyphicon-search"></i>
      </button>
    </div>
  </div>
</form>
      <li><a href="addproduct">Add New Product</a></li>
      <li><a href="getpersondetails"><span class="glyphicon glyphicon-user"></span>Login</a></li>
      <li><a href="getregistrationdetails"><span class="glyphicon glyphicon-log-in"></span>Register</a></li>
    </ul>
  </div>
</nav>
</body>
</html>