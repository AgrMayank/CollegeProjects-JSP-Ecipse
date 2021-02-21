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
session.setAttribute("college","Trident");
session.setAttribute("name","Mayank");
%>
<br>
<a href="PageTwo.jsp">Go to 2nd page</a>
<br>
<a href="PageThree.jsp">Go to 3rd page</a>
</body>
</html>