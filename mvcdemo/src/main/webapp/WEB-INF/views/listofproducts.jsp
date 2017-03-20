<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      
      <!-- JQuery (for searchCondition-->
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

<link
	href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css"
	rel="stylesheet">
<title>All products</title>
<script>
$(document).ready(function(){
	var searchCondition=${searchCondition};
	$('.table').DataTable({
		"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],
		"oSearch":{"sSearch":searchCondition}
	})
});
</script>
<style>
img{
  border-radius: 50%;
  
}</style>
<style>
body{
background-image: url("resources/images/61_521a68b1-4df1-4a0e-afb9-6c15598f7193_1024x1024.jpg");
   background-repeat: no-repeat;
   
  background-size:cover;
}
div.sansserif {
    font-family: Arial, Helvetica, sans-serif;
}
</style>
</head>
<body>
<div class="container text-left">
<div class="panel panel-default" class="sansserif">
     <div class="panel-heading" style="background-color:DeepSkyBlue;">
  <center><B>LIST OF ALL PRODUCTS</B></center></div>
       <div class="panel-body">
<table class="table"><thead><tr>
<th>PRODUCT IMAGE</th>
<th>PRODUCT NAME </th>
<th>PRICE</th>
<th>QUANTITY</th>
<th>PRODUCT CATEGORY</th>
<th>VIEW</th>
<security:authorize access="hasRole('ROLE_ADMIN')">
<th>EDIT</th>
<th>DELETE</th>
</security:authorize></tr></thead>
<c:forEach var="p" items="${productList}">
<tbody>
<tr class="info"><td>
<c:url var="src" value="D:/images/${p.id}.png"></c:url>
<img src="${pageContext.request.contextPath}/resources/images/${p.id}.png" height="60" width="60"/>
</td>
<td>
${p.productname }
</td>
<td>
${p.price }
</td>
<td>
${p.quantity }</td>
<td>
${p.category.categoryDetails}
</td>
<td>
<c:url var="view" value="/productview?id=${p.id }"></c:url>
					<a href="${view }"><span class="glyphicon glyphicon-info-sign" style="font-size:20px"></span></a>
					</td>
					<td>
<security:authorize access="hasRole('ROLE_ADMIN')">
<c:url var="edit" value="/admin/editproduct?id=${p.id}"></c:url>
			<a href="${edit}"><span class="glyphicon glyphicon-edit" style="font-size:20px"></span></a>
			</security:authorize>
			</td>
			<td>
			<security:authorize access="hasRole('ROLE_ADMIN')">
<c:url var="delete" value="/admin/deleteproduct/${p.id }"></c:url>
					<a href="${delete}"><span class="glyphicon glyphicon-remove-sign" style="font-size:20px"></span></a>
					</security:authorize>
</td>
</tr>
</c:forEach>
</tbody>
</table>
</div></div></div>
</body>
</html>
<%@ include file="fotter.jsp" %>