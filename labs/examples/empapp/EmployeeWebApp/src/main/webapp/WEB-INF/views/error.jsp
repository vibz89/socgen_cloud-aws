<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
<head>
	<title>Error Page</title>
</head>

<body>
<h1>
	${exception.errorMsg != null ? "Login Failed!": "Unexpected Error"}  
</h1>

<p> ${exception.errorMsg != null ? exception.errorMsg : exception} </p>
<span> <a href="/"> Back </a></span>
</body>
</html>
