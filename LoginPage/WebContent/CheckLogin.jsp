<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","eclipse","eclipse");

        PreparedStatement ps = con.prepareStatement("select * from loginpage");
        ResultSet rs = ps.executeQuery();

        String uname = " " + request.getParameter("name");
        String pass = " " + request.getParameter("pass");

        boolean flag = true;
        while(rs.next())
        {
            if(uname.equals(rs.getString(1)) && pass.equals(rs.getString(8)))
            {
                flag = false;
                request.getSession().setAttribute("Message",uname);
                response.sendRedirect("LoggedIn.jsp");
            }
        }
        while(flag==true)
        {
            request.getSession().setAttribute("errorMessage","Incorrect Username or Password!");
            response.sendRedirect("index.jsp");
        }
    }
    catch(Exception e){
        out.println("Some ERROR..."+e);
    }
%>
</body>
</html>