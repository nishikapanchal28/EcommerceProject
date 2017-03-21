<%@ include file="header.jsp"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact list</title>
</head>
<body>
<div class="container text-left">
<div class="panel panel-default" class="sansserif">
     <div class="panel-heading" style="background-color:DeepSkyBlue;">
  <center><B>LIST OF ALL CONTACTS</B></center></div>
       <div class="panel-body">
 <table class="table"><thead><tr>
<th>NAME:</th>
<th>EMAIL ID:</th>
<th>COMMENT:</th></tr></thead>
<c:forEach var="a" items="${contactList}">
<tbody>

<tr>
<td>
${a.name }
</td>
<td>
${a.email }
</td>
<td>
${a.comment }
</td>
</tr>
</tbody>
</c:forEach>
</table> 
</div>
</div>
</div>

</body>
</html>
<%@ include file="fotter.jsp" %>