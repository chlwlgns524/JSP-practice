<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Process student-info-checkbox.html</title>
</head>
<body>
	<%-- <p>First Name: <%= request.getParameter("firstName") %></p> --%>
	<p>First Name: ${param.firstName}</p>
	<%-- <p>First Name: <%= request.getParameter("lastName") %></p> --%>
	<p>Last Name: ${param.lastName}</p>
	<%-- <p>Country: <%= request.getParameter("country") %></p> --%>
	<p>Country: ${param.country}</p>
	<%-- <p>Sex: <%= request.getParameter("sex") %></p> --%>
	<p>Sex: ${param.sex}</p>
	<ul>
		<%
			String[] languages = request.getParameterValues("programmingLanguage");
		
			if (languages != null) {
				for (String language : languages)
					out.print("<li>" + language + "</li>");
			}
		%>
	</ul>
</body>
</html>