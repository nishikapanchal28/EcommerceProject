<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/dataTables.min.js" rel="stylesheet">
    <script>

    $('#myTable').dataTables();

</script>
</head>
<body>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.bootstrap.min.js"></script>
<table class=table id="myTable"><tr>
<thead><tr>
		<th>Image</th>
		<th>product name </th>
		<th>price</th>
		<th>quantity</th>
		<th>description</th>
		<th>category</th>
		</tr></thead>
		<tbody>
<c:forEach var="p" items="${products}">
<tr><td>
<c:url var="src" value="D:/images/${p.id}.png"></c:url>
<img src="${pageContext.request.contextPath}/resources/images/${p.id}.png" height="60" width="60"/>
</td>
<td>${p.productname }</td>
<td>${p.price }</td>
<td>${p.quantity }</td>
<td>${p.description }</td>
<td>${p.category.categoryDetails}</td>

<td><c:url var="delete" value="/admin/deleteproduct/${p.id }"></c:url>
					<a href="${delete}"> Remove<span class="glyphicon glyphicon-remove"></span></a>
</td>
<td><c:url var="edit" value="/admin/editproductform?id=${p.id}"></c:url>
					<a href="${edit}"> edit<span class="glyphicon glyphicon-pencil"></span></a>
</td>
<td><c:url var="delete" value="/all/viewproductdetails/${p.id }"></c:url>
					<a href="${delete}"> view<span class="glyphicon glyphicon-info-sign"></span></a>
</td>
</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>
