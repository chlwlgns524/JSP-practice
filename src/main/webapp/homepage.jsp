<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include files in a JSP file</title>
</head>
<body>
	<jsp:include page="my-header.html"></jsp:include>
	<br />
	<p> blah~ blah~ blah~ blah~ blah~</p>
	<p> blah~ blah~ blah~ blah~ blah~</p>
	<p> blah~ blah~ blah~ blah~ blah~</p>
	<p> blah~ blah~ blah~ blah~ blah~</p>
	<br />
	<jsp:include page="my-footer.jsp"></jsp:include>   
</body>
</html>