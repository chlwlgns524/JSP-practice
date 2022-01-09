<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="todo-demo.jsp">
		<label>Add new items: <input type="text" name="toDoItem" /></label>
		<input type="submit" value="Submit"/>	
	</form>
	<hr />
	<h3>To List Items :</h3>
	<ol>
		<%
		String toDoItem = request.getParameter("toDoItem");
		
		if (toDoItem != null) {
			List<String> items = (ArrayList<String>) session.getAttribute("toDoItems");
			
			if (items == null) {
				items = new ArrayList<String>();
				session.setAttribute("toDoItems", items);
			}
			items.add(toDoItem);
			
			for (String item : items)
				out.write("<li>" + item + "</li>");	
		}
		%>
	</ol>
</body>
</html>