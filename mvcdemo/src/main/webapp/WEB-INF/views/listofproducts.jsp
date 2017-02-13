<%@ include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table><tr>
<th>product name </th>
<th>price</th>
<th>quantity</th>
<th></th></tr>
<c:forEach var="p" items="${productList}">
<tr>
<td>
${p.productname }
</td>
<td>
${p.price }
</td>
<td>
${p.quantity }
</td>
<td>
<c:url var="delete" value="/deleteproduct/${p.id }"></c:url>
					<a href="${delete}"><span class="glyphicon glyphicon-remove"></span></a>

</td></tr>
</c:forEach>
</table>
</body>
</html>
<%@ include file="fotter.jsp" %>