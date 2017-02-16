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
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      
       <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
<title>Insert title here</title>
<script>
$(document).ready(function() {
	var searchCondition='$(searchCondition)';
	$('table').DataTable({"lenghthMenu":[[3,5,7,-1],[3,5,7,"All"]],"oSearch":{"sSearch":searchCondition}})
	
})</script>
</head>
<body>

<table><tr>
<th>product image|</th>
<th>product name |</th>
<th>price|</th>
<th>quantity|</th>
<th>category|</th>
<th>delete/edit
</th></tr>
<c:forEach var="p" items="${productList}">
<tr><td>
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
${p.quantity }
${p.category.categoryDetails}
</td>
<td>
<c:url var="delete" value="/deleteproduct/${p.id }"></c:url>
					<a href="${delete}"><span class="glyphicon glyphicon-remove"></span></a>
</td>
<td>
<c:url var="edit" value="/editproduct?id=${p.id}"></c:url>
					<a href="${edit}"><span class="glyphicon glyphicon-pencil"></span></a>
</td>
</tr>
</c:forEach>
</table>
</body>
</html>
<%@ include file="fotter.jsp" %>