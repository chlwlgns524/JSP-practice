<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Built-in Server Object(request) in a JSP page</title>
</head>
<body>

	<h3>What type of operating systems and web-browser are this user using?</h3>
	<p><%= request.getHeader("User-Agent") %></p>
	
	<h3>What type of language are this user using?</h3>
	<p><%= request.getLocale() %></p>

</body>
</html>