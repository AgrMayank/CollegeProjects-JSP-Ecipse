<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title id="top">Login MyPage</title>
  <header style="text-align:center;font-size:250%;color:#5e544c;">
    Welcome to My World
  </header>
</head>
<body style="background-color:#f1ede5;font-family:DK Lemon Yellow Sun;font-size:130%;text-align:center" background="bg.jpg">
  <p style="text-align:center" width:"75%">
    <label for=""><a href="About.jsp">About Us</a> / <a href="Contact.jsp">Contact Us</a></label>
  </p>
  <hr>
  <form class="" action="CheckLogin.jsp" method="post" style="text-align:center" width:"75%">
    <label for="">Username <input type="text" name="name" value="" required></label>
    <br>
    <label for="">Password <input type="password" name="pass" value="" required></label>
    <br>
      <div style="color:red">
        ${errorMessage}
        <%request.getSession().setAttribute("errorMessage","");%>
        </div>
    <button type="submit" name="Submit">Login</button>
    <button type="reset" name="Reset">Reset</button>
    <label for=""><a target="_blank" href="SignUp.jsp"><h3>New user? Create an account</h3></a></label>
  </form>
</body>
<footer style="color:#5e544c;"><hr><b>©2018.</b> Designed by Mayank.</footer>
</html>
