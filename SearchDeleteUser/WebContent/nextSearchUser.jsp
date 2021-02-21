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
try{
	String rn = "" + request.getParameter("rn");
	Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","eclipse","eclipse");
	PreparedStatement ps = con.prepareStatement("select * from EDITDELETE where REG=?");
    ps.setString(1, rn);

	ResultSet rs = ps.executeQuery();
%>
<table border="1">
<%
while(rs.next())
{
%>
<tr>
	<td>Reg no</td>
	<td><%=rs.getString(1)%></td>
</tr>
<tr>
	<td>Name</td>
	<td><%=rs.getString(2)%></td>
</tr>
<tr>
	<td>Phone No.</td>
	<td><%=rs.getString(3)%></td>
</tr>
<%
}
}
catch(Exception e)
{
	out.println("Some Error "+e);
}
%>
</table>
</body>
</html>