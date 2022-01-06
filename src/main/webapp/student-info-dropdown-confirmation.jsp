<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Process student-info-dropdown.html</title>
</head>
<body>
	<p>First Name: <%= request.getParameter("firstName") %></p>
	<p>Last Name: <%= request.getParameter("lastName") %></p>
	<p>Country Name: <%= request.getParameter("country") %></p>
	
	<p>First Name: ${param.firstName}</p>
	<p>Last Name: ${param.lastName}</p>
	<p>Country Name: ${param.country}</p>
	
</body>
</html>