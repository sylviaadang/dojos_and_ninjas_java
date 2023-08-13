<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page isErrorPage="true" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Dojo</title>
</head>
<body>
<h1>New Dojo</h1>
	<div>
		<form:form action="/dojos/new" method="post" modelAttribute="dojo">
			<form:label path="name">Name: </form:label>
			<form:input type="text" path="name"/>
			<input type="submit" value="Create Dojo">
		</form:form>
	</div>

</body>
</html>