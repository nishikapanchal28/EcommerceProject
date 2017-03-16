<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
          <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <style>
body  {
    background-image: url("resources/images/Dollarphotoclub_84706998.jpg");
    background-repeat: no-repeat;
   
  background-size:cover;
}
p1{
font-style: italic;
color: red;
text-align: center;
}
div.panel{
 position: absolute;
    right: 300px;
    width: 500px;
    height: 250px;
      background: rgba(130,130,130,.3);
}
</style>

<body>

  <div class="container">
  <form action="<c:url value='/j_spring_security_check'></c:url>"  method="post" class="form-horizontal">
  <div class="panel panel-default">
     <div class="panel-heading" style= min-height:10>
  <center><B>LOGIN</B> </center></div>
       <div class="panel-body">
     <p1>${error}
		${logout}
		${registrationSuccess }</p1>
    <div class="form-group">
      <label class="control-label col-sm-2" for="username"></label>
      <div class="col-sm-10">
        <input class="form-control" type="text" name="username" placeholder="Enter user name"/>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="password"></label>
      <div class="col-sm-10">
        <input class="form-control" type="password" name="password" placeholder="Enter password"/>
      </div>
    </div>
     <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox"> Remember Me</label>
        </div>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-2"></label>
      <div class="col-sm-10">
       <input type="submit" value="SUBMIT" align="right"class="btn btn-info">
       <input  type="submit" value="CANCEL" class="btn btn-info">
      </div>
  
  
      </div>
    </div>
        </form>
     </div>
   
</body>
</html>
<%@ include file ="fotter.jsp" %>