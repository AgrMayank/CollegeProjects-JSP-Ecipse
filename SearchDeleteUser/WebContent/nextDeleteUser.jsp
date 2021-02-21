<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Next Delete User</title>
</head>
<body>
<%
try
{
	String rn = "" + request.getParameter("rn");
	Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","eclipse","eclipse");
	PreparedStatement ps = con.prepareStatement("delete from EDITDELETE where REG=?");
	ps.setString(1,rn);
	
	int x = ps.executeUpdate();
	out.println(x+" users deleted!");
}
catch(Exception e)
{
	out.println("Some error "+e);
}
%>
</body>
</html>