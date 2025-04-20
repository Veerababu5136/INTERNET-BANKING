

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Date;

/**
 * Servlet implementation class userRegistrationForm
 */
@WebServlet("/userRegistrationForm")
public class userRegistrationForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userRegistrationForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String customerName = request.getParameter("customerName");
        String dob = request.getParameter("dob");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender");
        String branch = request.getParameter("branch");
        String permanentAddress = request.getParameter("permanentAddress");
        String presentAddress = request.getParameter("presentAddress");
        
        PreparedStatement insertStatement = null;
        
        PrintWriter out=response.getWriter();
       
        try
    	{
    		Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/internet","root", "");

            Statement stmt= con.createStatement();
            
            String query = "SELECT * FROM customers WHERE email = '" + email + "'";
            ResultSet rs = stmt.executeQuery(query);
            if (!(rs.next()))
            {
            	 String insertQuery = "INSERT INTO Customers (customerName, dob, phoneNumber, email, password, gender, branch, permanentAddress, presentAddress, reg) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())";
                 insertStatement = con.prepareStatement(insertQuery);
                 insertStatement.setString(1, customerName);
                 insertStatement.setString(2, dob);
                 insertStatement.setString(3, phoneNumber);
                 insertStatement.setString(4, email);
                 insertStatement.setString(5, password);
                 insertStatement.setString(6, gender);
                 insertStatement.setString(7, branch);
                 insertStatement.setString(8, permanentAddress);
                 insertStatement.setString(9, presentAddress);

                 int rowsInserted = insertStatement.executeUpdate();
                 if (rowsInserted > 0) 
                 {
                     String sql = "SELECT Customer_id FROM customers ORDER BY Customer_id DESC LIMIT 1";
                     
                     PreparedStatement statement = con.prepareStatement(sql);

                     ResultSet resultSet = statement.executeQuery();
                     
                     if (resultSet.next()) 
                     {
                    	 out.print("ji");
                         int lastCustomerId = resultSet.getInt("Customer_id");
                         out.print(lastCustomerId);
                         String sql2 = "INSERT INTO checkbook (Customer_id) VALUES (?)";
                         
                         PreparedStatement statement2 = con.prepareStatement(sql2);

                         // Set the value for the parameter in the SQL query
                         statement2.setInt(1, lastCustomerId);
                         
                         int rowsInserted2 = statement2.executeUpdate();

                         if (rowsInserted2 > 0)
                         {
                        	 response.sendRedirect("added.jsp");
                         }
                         
                         }
                     
                    
                 } 
                 else 
                 {
                     out.println("Registration failed.");
                 }
    	}
            
            else
            {
                
            	response.sendRedirect("emailAlready.jsp");

            }
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	
    	
    
	}
	}

