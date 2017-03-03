<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<form:form action="/${product.id}" commandName="product" method="POST" class="form-horizontal" enctype="multipart/form-data">
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
      <label class="control-label col-sm-2" for="productname">Product Name:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="productname" placeholder="Enter the name of product"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="price">Price:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="price" placeholder="Enter the price of product"/>
      </div>
      </div>
    
      <div class="form-group">
      <label class="control-label col-sm-2" for="quantity">Quantity:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="quantity"  placeholder="Enter quantity"/>
      </div>
      </div>
       <div class="form-group">
      <label class="control-label col-sm-2" for="description">Description:</label>
      <div class="col-sm-10">
        <form:input class="form-control" path="description"  placeholder="Enter quantity"/>
      </div>
    </div>
    <div class="form-group">
      <label for="image">Image</label>
      <form:input path="images" type="file"/>
    </div>
<div class="form-group">
      <label class="control-label col-sm-2"></label>
      <div class="col-sm-10">
<input type="submit" value="edit Product" class="btn btn-default">
</div>
</div>
    </form:form>
</div>

</body>
</html>