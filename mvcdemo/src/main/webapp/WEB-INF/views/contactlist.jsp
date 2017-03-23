<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact list</title>
<script>
$(window).load(function() {
searchTable($('#search').val());
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
body{
background-image:url("file:///D:/Projectworkspace/mvcdemo/src/main/webapp/resources/images/fashion-woman-cute-airport.jpg");}
div.panel{
 
      background: rgba(130,130,130,.9);
}

#myInput {
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
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
<div class="container text-left">
<div class="panel panel-default" class="sansserif">
     <div class="panel-heading" style="background-color:DeepSkyBlue;">
  <center><B>LIST OF ALL CONTACTS</B></center></div>
       <div class="panel-body">
       <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search..." title="Type in a name">    
 <table id="myTable"><thead><tr>
<th>NAME</th>
<th>EMAIL ID</th>
<th>COMMENT</th></tr></thead>
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