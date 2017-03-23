<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
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
   <style>
body{
   background-image: url("file:///D:/Projectworkspace/mvcdemo/src/main/webapp/resources/images/Mackenzie-Leather-Bags-Goods-Product-Photography-13.jpg");
   background-repeat: no-repeat;
  background-size:cover;
   }
   div.panel{
 
      background: rgba(130,130,130,.3);
}
</style>
<!-- <script  type="text/javascript">
$(function(){
$('input[type=date]').datepicker({
	format:'YYYY-MM-DD'
});	
});
</script> -->
</head>
<body>
<div class="container">
<div class="panel panel-default">
     <div class="panel-heading" style="background-color:DeepSkyBlue;">
  <center><B>EDIT PRODUCT DETAILS</B> </center></div>
       <div class="panel-body">
<form:form action="editProduct/${product.id}" commandName="product" method="POST" class="form-horizontal" enctype="multipart/form-data">
<div class="form-group">
<label for="id"></label>
<form:hidden  path="id"/>
</div>
<div class="form-group">
      <label class="control-label col-sm-2" for="productname">Product ID:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="id" value="${product.id}"/>
      </div>
    </div>
<div class="form-group">
      <label class="control-label col-sm-2" for="productname">PRODUCT NAME:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="productname" placeholder="Enter the name of product"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="price">PRICE:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="price" placeholder="Enter the price of product"/>
      </div>
      </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="manufacturerename">MANUFACTURER NAME:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="manufacturerename"  placeholder="Enter the name of manufacturer"/>
      </div>
    </div>
      <div class="form-group">
      <label class="control-label col-sm-2" for="quantity">QUANTITY:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="quantity"  placeholder="Enter quantity"/>
      </div>
    </div>
     <div class="form-group">
     <label class="control-label col-sm-2" for="mfg">MFG DATE:</label>
        <div class="col-sm-10">
      <form:input  path="mfg" class="form-control" placeholder="Enter date of manufacturing"/>
  
      </div>
      </div>
    <div class="form-group">
<label class="control-label col-sm-2" class="radio-inline"  for="category">CATEGORY:</label> 
<c:forEach var="c" items="${categories}">
<form:radiobutton path="category.id" value="${c.id}"/>${c.categoryDetails }
</c:forEach>

</div>
  <div class="form-group">
      <label class="control-label col-sm-2" for="image">IMAGE:</label>
      <form:input path="images" type="file" />
    </div>

<div class="form-group">
      <label class="control-label col-sm-2"></label>
      <div class="col-sm-10">
<input type="submit" value="EDIT PRODUCT" class="btn btn-info">
<input type="reset" value="RESET" class="btn btn-info">
</div>
</div>

    </form:form>
</div>
</div>
</div>
</body>
</html>
<%@ include file="fotter.jsp" %>