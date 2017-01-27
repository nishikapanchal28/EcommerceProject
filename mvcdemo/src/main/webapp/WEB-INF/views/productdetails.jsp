<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PRODUCT DETAILS</title>
</head>
<body>
<form:form action="processproduct" commandName="product">
<table>
    <tr>
        <td>Name of the product :</td>
        <td><form:input path="productname" /></td>
    </tr>
    <tr>
        <td>Manufacturer :</td>
        <td><form:input path="manufacturerename" /></td>
    </tr>
     <tr>
        <td>Price :</td>
        <td><form:input path="price" /></td>
    </tr>
     <tr>
        <td>Quantity :</td>
        <td><form:input  path="quantity" /></td>
    </tr>
    <tr>
        <td colspan="2"><input type="submit" value="submit"></td>
    </tr>
</table>
</form:form>
</body>
</html>