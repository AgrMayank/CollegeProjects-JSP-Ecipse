<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=" "+session.getAttribute("name");
out.println("Welcome Mr./Mrs. "+name);
%>
<br>
<a href="LogOut.jsp">Log Out</a>
</body>
</html>