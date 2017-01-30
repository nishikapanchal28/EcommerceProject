<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Name of the product :${productObj.productname}<br>
Manufacturer :${productObj.manufacturerename}<br>
Price :${productObj.price}<br>
Quantity :${productObj.quantity}<br>
Total Price: ${productObj.price * productObj.quantity}<br>
<a href="home">CLICK HERE TO GO BACK TO HOME PAGE</a>
</body>
</html>
<%@ include file="fotter.jsp" %>