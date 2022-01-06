<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Scriptlet</title>
</head>
<body>
	<h1>Print some sentences using java for loop!</h1>
	
	<%
		for (int i = 0; i < 5; i++)
			out.println("Print some sentences using java for loop! : "
					+ (i + 1) + "<br />");
	%>
</body>
</html>