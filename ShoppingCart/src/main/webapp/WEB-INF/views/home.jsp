<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %> 
         <%@ page isELIgnored="false" %>
         <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      
       <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">

</head>
<body>
<a href ="home">home</a>|

<c:if test="${pageContext.request.userPrincipal.name==null}">

<c:url var="register" value="/all/registerCustomer"></c:url>

<a href ="${register}">register</a>|

<c:url var="login" value="/login"></c:url>

<a href ="${login}">Login</a>|

</c:if>

<c:if test="${pageContext.request.userPrincipal.name!=null}">

<security:authorize access="hasRole('ROLE_ADMIN')">

<c:url var="addproduct" value="/admin/addproduct"></c:url>

<a href ="${addproduct}">product</a>|

</security:authorize>

<c:url var="allproducts" value="/all/viewproducts"></c:url>

<a href ="${allproducts}">list all products</a>|

<a href ="">welcome${pageContext.request.userPrincipal.name}</a>

<ul>
		 <li class="dropdown">
			<a href="" class="dropdown-toggle" data-toggle="dropdown">Select by Category<b class="caret"></b></a>
			
			<ul class="dropdown-menu">
			
			<c:url var="url1" value="/all/productsByCategory?searchCondition=new arrival"></c:url>
			
			<li><a href="${url1}">New Arrivals</a></li>
			
			<c:url var="url2" value="/all/productsByCategory?searchCondition=discount"></c:url>
			
			<li><a href="${url2}">discount</a></li>
			
			<c:url var="url_3" value="/all/productsByCategory?searchCondition=sales"></c:url>
			
			<li><a href="${url_3}">sales </a></li>
			</ul>
			</li>
			</ul>
			</c:if>
			
			<c:if test="${pageContext.request.userPrincipal.name!=null}">
			
			<li><a href="/J_spring_security_logout" >Logout</a></li>
			
			</c:if>
			
			
</body>
</html>