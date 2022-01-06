<%@ page import="com.myJSPPrj.jsp.FunUtils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Using a Java class in JSP file</title>
</head>
<body>
	<p>The lower case version of "FUN FUN FUN" is : 
	<%= FunUtils.makeLowerCase("FUN FUN FUN") %></p>
</body>
</html>