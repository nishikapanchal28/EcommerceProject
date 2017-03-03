<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${error}
${logout}
${registrationSuccess}
<form name="loginForm" method="post" 
action="<c:url value='/j_spring_security_check'></c:url>">
Enter User name <input type="text" name="j_username"/>
Enter password <input type="password" name="j_password"/>
<input type="submit" value="sumbit"/>
</form>
</body>
</html>