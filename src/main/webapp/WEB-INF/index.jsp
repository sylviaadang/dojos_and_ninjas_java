<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ page isErrorPage="true" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Dojos</title>
</head>
<body>
<h1>All Dojos</h1>
	<div>
		<c:forEach var="dojo" items="${items}">
			<p><a href="/dojos/${dojo.id}"><c:out value="${dojo.name}"></c:out></a>
		</c:forEach>
		</div>
		<hr>
		<div>
			<p><a href="/dojo/new">Create New Dojo</a></p>
			<p><a href="ninjas/new">Create New Ninja</a></p>
		</div>

</body>
</html>