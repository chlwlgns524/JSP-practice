<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Process student-info.html</title>
</head>
<body>
							<!-- Using request object -->
<%-- 	<p>The first name of this student : <%= request.getParameter("firstName") %></p> --%>
<%-- 	<p>The last name of this student : <%= request.getParameter("lastName") %></p> --%>

							<!-- Using page variable param and EL(Expression Language) -->
	<p>The first name of this student : ${param.firstName}</p>
	<p>The last name of this student : ${param.lastName}</p>
</body>
</html>