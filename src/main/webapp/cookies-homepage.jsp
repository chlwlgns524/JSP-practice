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
	String favLang = "Java";
	Cookie[] cookies = request.getCookies();
	
	if (cookies != null) {
		for (Cookie cookie : cookies) {
			if ("app.favoriteLanguage".equals(cookie.getName())) {
				favLang = cookie.getValue();
				break;
			}
		}
	}
	
	pageContext.setAttribute("favLang", favLang); // Without this line, the variable in
												  // the EL brackets below would not work.
	
	%>
	
	<h1>Training Portal</h1>
	<h2>New Books for ${favLang}</h2>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<h2>Latest News Reports for ${favLang}</h2>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<h2>Hot Jobs for ${favLang}</h2>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<hr />
	<a href="cookies-personalize-form.html">Personalize this page</a>
</body>
</html>