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
session.invalidate();
String clg=" "+session.getAttribute("college");
String nm=" "+session.getAttribute("name");
out.println("The college name is "+clg+"<br>name is "+nm);
%>
</body>
</html>