<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The First JSP Program</title>
</head>
<body>
	<h1>Hello World!</h1>
	<p>Now the current time is <%= new Date() %> </p>
</body>
</html>