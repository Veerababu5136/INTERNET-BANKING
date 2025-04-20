
import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;


/**
 * Servlet implementation class validate
 */
@WebServlet("/validate")
public class validate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public validate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		/*
		 checking
		 
		PrintWriter pw=response.getWriter();
		
		pw.println(email+password);
		
		*/
		
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/internet","root", "");
 
            
 
            Statement stmt= con.createStatement();
            

            String query = "SELECT * FROM admins WHERE email = '" + email + "' AND password = '" + password + "'";
            ResultSet rs = stmt.executeQuery(query);
           
            if (rs.next())
            {
            	HttpSession session = request.getSession();
            	session.setAttribute("email",email);
                    response.sendRedirect("success.jsp");
           
            } 
		
		  else 
          {
              response.sendRedirect("fail.jsp");
          }
            


		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

}
