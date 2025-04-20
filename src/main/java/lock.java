

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class lock
 */
@WebServlet("/lock")
public class lock extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lock() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int acctid=Integer.parseInt(request.getParameter("accountID"));
		

	    try {
	        // Establish a database connection
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/internet", "root", "");

	        String query = "update account set account_status='lock' WHERE account_id = '" + acctid + "'";
	        
	        Statement stmt=con.createStatement();
	        
	        int rows=stmt.executeUpdate(query);
	        
	        if(rows>0)
	        {
	        	response.sendRedirect("lockUpdate.jsp");
	        }
	}
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }

}
}
