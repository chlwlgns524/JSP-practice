<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Expressions</title>
</head>
<body>
	<p>Converting a String to the upper-case version : <%= new String("hello! world!").toUpperCase() %></p>
	<p>A simple arithmetic : 25 * 4 = <%= 25 * 4 %></p>
	<p>Is 65 less than 75? : <%= 65 < 75 %>
</body>
</html>