package Reg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NextReg
 */
@WebServlet("/NextReg")
public class NextReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NextReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String un = "" + request.getParameter("un");
        String pw = "" + request.getParameter("pw");
        String ph = "" + request.getParameter("ph");
		PrintWriter out=response.getWriter();
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","eclipse","eclipse");
            PreparedStatement ps = con.prepareStatement("Insert into servreg values(?, ?, ?)");
            ps.setString(1, un);
            ps.setString(2, pw);
            ps.setString(3, ph);
    		int x=ps.executeUpdate();
    		out.println(x+" User created....<br><a href='/Servlet_Proj/Reg'><br>Create another user</a>");
    	
            con.commit();
            ps.close();
            con.close();
        }
        catch(Exception e){
            out.println("Some ERROR..."+e);
        }
        
        out.println("<br>Username : "+un+"<br>Password : "+pw+"<br>Phone Number : "+ph);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
