<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Action Login</title>
</head>
<body>
<%
	String un=" "+request.getParameter("un");
	String pw=" "+request.getParameter("pw");

	String dun="",dpw="";
	try
	{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//out.println("Driver Loaded...");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","eclipse","eclispe");
		//out.println("Got the connection...");
		PreparedStatement ps= con.prepareStatement("select un,pw from userdata where un=? and pw=?");
		ps.setString(1,un);
		ps.setString(2,pw);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			dun=rs.getString(1);
			dpw=rs.getString(2);
		}
		if(un.equals(dun)&& pw.equals(dpw))
		{
			//out.println("Valid user");
			response.sendRedirect("Success.jsp");
		}
		else
		{
			response.sendRedirect("Failure.jsp");
			//out.println("InnnnValid user");
		}
		
	}
	catch(Exception e)
	{
		out.println("Some Problem"+e);
	}
	
%>

</body>
</html>