

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class approveCheckbook
 */
@WebServlet("/approveCheckbook")
public class approveCheckbook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public approveCheckbook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		
		int customerID=Integer.parseInt(request.getParameter("customerID"));
		
		 try {
		        // Establish a database connection
		        Class.forName("com.mysql.cj.jdbc.Driver");
		        
		        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/internet", "root", "");

				String updateQuery = "UPDATE checkbook SET status = 'Approved' WHERE Customer_id = " + customerID;
		        
		        Statement stmt=con.createStatement();
		        
		        int rows=stmt.executeUpdate(updateQuery);
		        
		        if(rows>0)
		        {
		        	response.sendRedirect("approvedSuccess.jsp");
		        }
		        
		}
		    catch(Exception e)
		    {
		    	e.printStackTrace();
		    }

		

	}

}
