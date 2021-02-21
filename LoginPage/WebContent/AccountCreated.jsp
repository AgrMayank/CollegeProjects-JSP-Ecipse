<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>Account Created</title>
    <header style="text-align:center;font-size:250%;color:#5e544c;">
      Account Created
    </header>
  </head>
  <body style="background-color:#f1ede5;font-family:DK Lemon Yellow Sun;font-size:130%;text-align:center;" background="bg.jpg">
    <%
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","eclipse","eclipse");
 
        ResultSet rs;
        PreparedStatement ps;
        
        String uname = " " + request.getParameter("uname");
        String fname = " " + request.getParameter("fname");
        String lname = " " + request.getParameter("lname");
        String gender = " " + request.getParameter("gender");
        String dob = " " + request.getParameter("dob");
        String email = " " + request.getParameter("email");
        String phno = " " + request.getParameter("phno");
        String pass = " " + request.getParameter("pass");

        out.println("<h3 style=\"color:brown\">Hey " + uname + ",</h3>");

        ps = con.prepareStatement("insert into loginpage values(?, ?, ?, ?, ?, ?, ?, ?)");
        ps.setString(1, uname);
        ps.setString(2, fname);
        ps.setString(3, lname);
        ps.setString(4, gender);
        ps.setString(5, dob);
        ps.setString(6, email);
        ps.setString(7, phno);
        ps.setString(8, pass);

        ps.executeUpdate();
        con.commit();
        ps.close();
        con.close();
    }
    catch(Exception e){
        out.println("Error : " + e);
    }
    %>
    <p style="text-align:center" width="75%">
      <label for=""><a href="index.jsp">Home</a> / <a href="About.jsp">About Us</a> / <a href="Contact.jsp">Contact Us</a></label>
    </p>
    <hr>
    <label for="">
          Your account has been Succesfully created!<br><br>
          <a href="index.jsp">Sign In </a>for more details.
    </label>
  </body>
    <footer style="color:#5e544c;"><hr><b>© 2018.</b> Designed by Mayank.</footer>
</html>
