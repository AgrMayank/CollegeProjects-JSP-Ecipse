<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<script type="text/javascript">
	var un=document.getElementById('un').value;
	var pw=document.getElementById('pw').value;
	if(un.length==0)
	{
		document.getElementById('msg').innerHTML="Username must not be empty";
		return false;
	}
	if(pw.length==0)
	{
		document.getElementById('msg').innerHTML="Password must not be empty";
		return false;
	}
	return true;
</script>
</head>
<body>
<form action="Actionlogin.jsp">
	<h3>Login Page</h3>
	<hr>
	Username<input type="text" name="un" id="un"><br>
	Password<input type="password" name="pw" id="pw"><br>
	<br>
	<p style="color: red;" id="msg"></p>
	<input type="submit" value="Login" onclick="return check();">	
</form>
</body>
</html>