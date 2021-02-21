<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<script type="text/javascript">
	function checkLogin()
	{
		var un = document.getElementById('un').value;
		var pw = document.getElementById('pw').value;
		var phno = document.getElementById('phno').value;
		var adr = document.getElementById('adr').value;
		
		if(un.length == 0)
		{
			document.getElementById('msg').innerHTML = "Username should not be empty";
			return false;
		}
		if(pw.length == 0)
		{
			document.getElementById('msg').innerHTML = "Password should not be empty";
			return false;
		}
		if(phno.length == 0)
		{
			document.getElementById('msg').innerHTML = "Phone Number should not be empty";
			return false;
		}
		if(adr.length == 0)
		{
			document.getElementById('msg').innerHTML = "Address should not be empty";
			return false;
		}
		alert(un+pw)
		return true;
	}
</script>
</head>
<body>
<form action="ActionReg.jsp">
    <h1>registration Page</h1>
    <hr>
    <label for="">Username <input type="text" name="un" id="un"></label><br>
    <label for="">Password <input type="password" name="pw" id="pw"></label><br>
    <label for="">Phone Number <input type="number" name="phno" id="phno"></label><br>
    <label for="">Address <textarea name="adr" id="" cols="30" rows="5" id="adr"></textarea></label><br>
 	<p style="color:red" id="msg"></p>
	<input type="submit" value="Submit" onclick="return checkLogin();">	
</form>
</body>
</html>