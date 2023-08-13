<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page isErrorPage="true" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Ninja</title>
</head>
<body>
	<div>
		<form:form action="/ninjas/new" method="POST" modelAttribute="ninja">
			<form:select path="dojo">
				<c:forEach var="dojo" items="${dojos}">
					<option value="${dojo.id}">${dojo.name}</option>
				</c:forEach>
			</form:select>
				<form:label path="firstName">First Name:</form:label>
				<form:input type="text" path="firstName"/>
				<form:label path="lastName">Last Name:</form:label>
				<form:input type="text" path="lastName"/>
				<form:label path="age">Age:</form:label>
				<form:input type="number" path="age"/>
				<input type="submit" value="Create Ninja">
		</form:form>
		</div>

</body>
</html>