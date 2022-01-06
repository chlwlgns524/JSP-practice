<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Declaration</title>
</head>
<body>
	<%! 
		public String makeUpperCase(String str) {
			return str.toUpperCase();
		}	
	%>
	
	<p>The lower case version of "hello world!" is : <%= makeUpperCase("Hello World!") %></p>
	
</body>
</html>