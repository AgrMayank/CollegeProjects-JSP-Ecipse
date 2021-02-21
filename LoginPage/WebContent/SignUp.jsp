<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>Sign Up</title>
    <header style="text-align:center;font-size:250%;color:#5e544c;">
      Sign Up
    </header>
  </head>
  <body style="background-color:#f1ede5;font-family:DK Lemon Yellow Sun;font-size:130%;text-align:center;" background="bg.jpg">
    <p style="text-align:center" width:"75%">
      <label for=""><a href="index.jsp">Home</a> / <a href="About.jsp">About Us</a> / <a href="Contact.jsp">Contact Us</a><hr></label>
    </p>
    <header style="text-align:center;font-size:150%;color:#5e544c;">
      Create an account ..
      <hr>
    </header>
    <form class="" action="AccountCreated.jsp" method="post" style="text-align:center" width="75%">
     <table style="width:100%;font-size:120%;background-color:#e6e0d3;" align="center">
      <tr><td align="right">Choose a username&emsp;:&emsp;</td><td align="left"><input type="text" name="uname" size="40" required></td></tr>

      <tr><td align="right">First name&emsp;:&emsp;</td><td align="left"><input type="text" name="fname" size="40" required></td></tr>

      <tr><td align="right">Last name&emsp;:&emsp;</td><td align="left"><input type="text" name="lname" size="40"></td></tr>

      <tr><td align="right">Gender&emsp;:&emsp;</td><td align="left"><input type="radio" name="gender" value="Male">Male<input type="radio" name="gender" value="Female">Female</td></tr>

      <tr><td align="right">Date of birth&emsp;:&emsp;</td><td align="left"><input type="date" name="dob" min="1960-01-01" max="2000-01-01" style="width:265px" required></td></tr>

      <tr><td align="right">Email ID&emsp;:&emsp;</td><td align="left"><input type="email" name="email" size="40" required></td></tr>

      <tr><td align="right">Phone Number&emsp;:&emsp;</td><td align="left"><input type="tel" name="phno" size="40"></td></tr>

      <tr><td align="right">Password&emsp;:&emsp;</td><td align="left"><input type="password" name="pass" size="40" required></td></tr>

      <tr><td align="right"><button type="submit" name="create">Create account</button></td><td align="left"><button type="reset" name="Reset">Cancel</button></td></tr>
    </table>
    </form>
  </body>
  <footer style="color:#5e544c;"><hr><b>© 2018.</b> Designed by Mayank.</footer>
</html>