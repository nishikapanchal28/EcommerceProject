<%@ include file="header.jsp"%>
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
<body><center>
<div class="container text-center"></div>
<div class="container text-center">
<div class="panel panel-default">
     <div class="panel-heading" style="background-color:DeepSkyBlue;">
  <B>WELCOME TO HOME PAGE</B></div>
       <div class="panel-body">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/Bags-06.jpg" alt="" width="80%" height="400px" margin="auto">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>

      <div class="item">
        <img src="resources/images/img-1.jpg" alt="" width="600" height="200">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
    <div class="item">
        <img src="resources/images/Stylish-Travel-Bags-for-Men.jpg" alt="" width="600" height="200">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
      <div class="item">
        <img src="resources/images/unforgetable-Designer-Bags-4.jpg" alt="" width="600" height="200">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
     
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>
  </div>
</div></center>
</body>
</html>
<%@ include file="fotter.jsp" %>