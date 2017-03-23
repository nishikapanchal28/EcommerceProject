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
$(window).load(function() {
searchTable($('#myInput').val());
});

$(document).ready(function() {
$('#myInput').keyup(function() {
searchTable($(this).val());
});
});

function searchTable(inputVal) {
var table = $('#myTable');
table.find('tr').each(function(index, row) {
var allCells = $(row).find('td');
if (allCells.length > 0) {
var found = false;
allCells.each(function(index, td) {
var regExp = new RegExp(inputVal, 'i');
if (regExp.test($(td).text())) {
found = true;
return false;
}
});
if (found == true)
$(row).show();
else
$(row).hide();
}
});
}
</script>
<style>
* {
  box-sizing: border-box;
}
body{
background-image: url("resources/images/61_521a68b1-4df1-4a0e-afb9-6c15598f7193_1024x1024.jpg");
   background-repeat: no-repeat;
   
  background-size:cover;
}
#myInput {
 
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}
div.panel{
 
      background: rgba(130,130,130,.9);
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 5px;
 
}
img{
  border-radius: 50%;
  
}
#myTable tr {
  border-bottom: 1px solid #ddd;
  
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
</style>
</head>
<body>
 <div class="container">
<div class="panel panel-default" class="sansserif">
     <div class="panel-heading" style="background-color:DeepSkyBlue;">
  <center><B>LIST OF ALL PRODUCTS</B></center></div>
       <div class="panel-body">
 <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search..." title="Type in a name">     
<table id="myTable"><tr>
<th>PRODUCT IMAGE</th>
<th>PRODUCT NAME </th>
<th>PRICE</th>
<th>QUANTITY</th>
<th>PRODUCT CATEGORY</th>
<th>VIEW</th>
<security:authorize access="hasRole('ROLE_ADMIN')">
<th>EDIT</th>
<th>DELETE</th>
</security:authorize></tr>
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
</div>
</div>
</div>
</body>
</html>
<%@ include file="fotter.jsp" %>