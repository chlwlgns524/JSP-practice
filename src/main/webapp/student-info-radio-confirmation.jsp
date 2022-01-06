<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Process student-info-radio.html</title>
</head>
<body>
	<p>First Name: <%= request.getParameter("firstName") %></p>
	<p>Last Name: <%= request.getParameter("lastName") %></p>
	<p>Country: <%= request.getParameter("country") %></p>
	<p>Programming Language: <%= request.getParameter("programmingLanguage") %></p>
	
	<p>First Name: ${param.firstName}</p>
	<p>Last Name: ${param.lastName}</p>
	<p>Country: ${param.country}</p>
	<p>Programming Language: ${param.programmingLanguage}</p>
</body>
</html>