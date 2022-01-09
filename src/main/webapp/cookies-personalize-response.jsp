<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Personalize The Site</title>
</head>
<body>
	<%
	String favoriteLang = request.getParameter("app.favoriteLanguage");
	Cookie newCookie = new Cookie("app.favoriteLanguage", favoriteLang);
	
	newCookie.setMaxAge(60 * 60 * 24 * 365);
	
	response.addCookie(newCookie);
	%>
	
	<h1>Thanks! We set your favorite language to: ${param.app.favoriteLanguage}</h1>
	<a href="cookies-homepage.jsp">Return to homepage.</a>
</body>
</html>