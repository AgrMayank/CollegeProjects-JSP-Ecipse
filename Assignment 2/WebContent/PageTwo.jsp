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
String clg=" "+session.getAttribute("college");
String nm=" "+session.getAttribute("name");
out.println("The college  name is "+clg+"<br>name is "+nm);
session.removeAttribute("college");
session.setAttribute("college"," ");
out.println("<br>The college name is "+clg+"<br>name is "+nm);
%>
<br>
<a href="PageThree.jsp">Go to 3rd page</a>
</body>
</html>