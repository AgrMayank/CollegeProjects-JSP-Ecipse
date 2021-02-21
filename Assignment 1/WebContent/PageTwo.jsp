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
String n1=" "+request.getParameter("n1");
session.setAttribute("name",n1);
out.println("Your name is : "+n1);
%>
<br>
<a href="PageThree.jsp">Go to 3rd Page</a>
</body>
</html>