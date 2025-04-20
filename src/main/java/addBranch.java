

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addBranch
 */
@WebServlet("/addBranch")
public class addBranch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addBranch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String branchId=request.getParameter("branchID");
		String branchName=request.getParameter("branchName");
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/internet","root", "");
 
            
 
            Statement stmt= con.createStatement();
            
            String query = "SELECT * FROM branch WHERE id = '" + branchId + "'";
            ResultSet rs = stmt.executeQuery(query);
           
            if (!(rs.next()))
            {
            	 String query2 = "INSERT INTO branch VALUES ('" + branchId + "', '" + branchName + "')";
            	    int rowsAffected = stmt.executeUpdate(query2);

            	    if (rowsAffected > 0) 
            	    {
            	        response.sendRedirect("added.jsp");
            	    } 
               
            } 
		
		  else 
          {
              response.sendRedirect("failed.jsp");
          }
            


		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

	

}
