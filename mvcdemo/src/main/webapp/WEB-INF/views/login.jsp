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
<body>
${error}
${logout}
${registrationSuccess }
  <div class="container">
  <form action="<c:url value='/j_spring_security_check'></c:url>"  method="post" class="form-horizontal">
  <div class="panel panel-default">
     <div class="panel-heading" style= min-height:10 style="background-color:DeepSkyBlue;">
  <center><B>LOGIN DETAILS</B> </center></div>
       <div class="panel-body">
    <div class="form-group">
      <label class="control-label col-sm-2" for="username">USER NAME:</label>
      <div class="col-sm-10">
        <input class="form-control" type="text" name="username" placeholder="Enter user name"/>
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="password">PASSWORD:</label>
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
       <input  value="CANCEL" class="btn btn-info">
      </div>
    </div></div></div>
        </form>
    </div>
</body>
</html>
<%@ include file ="fotter.jsp" %>