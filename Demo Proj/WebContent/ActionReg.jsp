<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Action reg</title>
</head>
<body>
    <%
        String un = " " + request.getParameter("un");
        String pw = " " + request.getParameter("pw");
        String phno = " " + request.getParameter("phno");
        String adr = " " + request.getParameter("adr");

   try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        out.println("Driver connected.");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","eclipse","eclipse");
        out.println("Connected.");
        PreparedStatement ps = con.prepareStatement("Insert into userdata values(?, ?, ?, ?)");
        ps.setString(1, un);
        ps.setString(2, pw);
        ps.setString(3, phno);
        ps.setString(4, adr);
		int x=ps.executeUpdate();
		out.println(x+" User created....<br><a href='reg.jsp'> create another user</a>");
	
        con.commit();
        ps.close();
        con.close();
    }
    catch(Exception e){
        out.println("Some ERROR..."+e);
}
    %>
</body>
</html>