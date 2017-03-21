<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact us</title>
  <style>
body{
background-image: url("resources/images/winter%20style%20sophie%20hulme%20bag.jpg");
   background-repeat: no-repeat;
   
  background-size:cover;
}
</style>
</head>
<body>
<div class="container text-left">
<div class="panel panel-default" class="sansserif">
     <div class="panel-heading" style="background-color:DeepSkyBlue;">
  <center><B>CONTACT</B></center></div>
       <div class="panel-body">
  <h3 class="text-center"></h3>
  <p class="text-center"><em></em></p>
  <div class="row test">
    <div class="col-md-4">
      <p>Contact us by Dropping a mail</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>india</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +00 22222222</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: nishikpanchal@gmail.com</p> 
    </div>
    <div class="col-md-8">
      <div class="row">
      <form action="addcontact" method="post">
        <div class="col-sm-6 form-group">
        
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comment" placeholder="Comment" rows="5"></textarea>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit">Send</button>
        </div>
      </div> 
     </form>
    </div>
  </div>

</div>
</div>
</div>

</body>
</html>
<%@ include file="fotter.jsp" %>