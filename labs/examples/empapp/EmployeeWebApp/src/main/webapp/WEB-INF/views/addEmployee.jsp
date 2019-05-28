<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>Add Employee</title>
</head>

<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>

<body>
	<h2>Add Employee</h2>
	<form:form method="POST" action="${pageContext.request.contextPath}/employee/add" modelAttribute="employee">
		<form:errors path="*" cssClass="errorblock" element="div" />
		<table>
			<tr>
				<td><form:label path="name">Name:</form:label></td>
				<td><form:input path="name" /> <form:errors path="name"
						cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="age">Age:</form:label></td>
				<td><form:input path="age" /> <form:errors path="age"
						cssClass="error" /></td>
			</tr>
			<%-- 			<tr>
				<td>Gender:</td>
				<td><form:radiobutton path="gender" value="M" /> Male &nbsp; <form:radiobutton
						path="gender" value="F" /> Female</td>
			</tr> --%>

			<tr>
				<td>Gender:</td>
				<td><form:radiobuttons path="gender" items="${genderOptions}" />
					&nbsp; <form:errors path="gender" cssClass="error" /></td>
			</tr>

			<tr>
				<td>Contractor:</td>
				<td><form:checkbox path="contractor" /></td>
			</tr>

<%-- 			<tr>
				<td>Skills:</td>
				<td><form:checkboxes path="skills" items="${skillList}" /></td>
			</tr> --%>

			<tr>
				<td><form:label path="designation">Designation:</form:label></td>
				<td><form:input path="designation" /></td>
			</tr>
			<tr>
				<td><form:label path="department">Department:</form:label></td>
				<td><form:input path="department" /></td>
			</tr>
			<tr>
				<td><form:label path="address">Address:</form:label></td>
				<td><form:textarea cols="20" rows="3" path="address" /></td>
			</tr>
			<tr>
				<td><form:label path="country">Country:</form:label></td>
				<td><form:select path="country" items="${countries}" /></td>
			</tr>

			<tr height="50">
				<td/>
				<td>
					<input type="submit" value="Save" />&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="Reset" /> &nbsp;&nbsp;&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/employee/list">Back</a>
				</td>

			</tr>
		</table>
	</form:form>
</body>
</html>
