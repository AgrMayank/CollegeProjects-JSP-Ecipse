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
String  nm[]=session.getAttribute("names");
for(int i=0;i<nm.length;i++)
{
out.println(nm[i]);
}
%>
</body>
</html>