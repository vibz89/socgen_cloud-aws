<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
<head>
	<title>Login</title>
</head>

<body>
<p> ${exception.errorMsg}</p>
<br>
<h2>Login</h2>
<form:form method="POST" action="${pageContext.request.contextPath}/authenticate">
   <table>
    <tr>
        <td><form:label path="userName">UserName:</form:label></td>
        <td><form:input path="userName" /></td>
    </tr>
    <tr>
        <td><form:label path="password">Password:</form:label></td>
        <td><form:password path="password" /></td>
    </tr>
    
    <tr>
        <td colspan="2">
            <input type="submit" value="Login"/>
        </td>
    </tr>
</table>  
</form:form>
</body>
</html>
