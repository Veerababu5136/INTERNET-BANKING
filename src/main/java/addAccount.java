

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


/**
 * Servlet implementation class addAccount
 */
@WebServlet("/addAccount")
public class addAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addAccount() {
        super();
        // TODO Auto-generated constructor stub
    }



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	String accountType = request.getParameter("accountType");
    String cardNumber = request.getParameter("cardNumber");
    int customerId = Integer.parseInt(request.getParameter("customerId"));
    int pin = Integer.parseInt(request.getParameter("pin"));
    double balance = Double.parseDouble(request.getParameter("balance"));
    String accountStatus = request.getParameter("accountStatus");

    PrintWriter out = response.getWriter();
    
    Connection con = null;
    PreparedStatement statement = null;

    

    try {
        // Establish a database connection
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/internet", "root", "");

        
 String query5 = "SELECT Customer_id FROM customers WHERE Customer_id = " + customerId;
        
        Statement stmt2=con.createStatement();
        
        ResultSet rs5=stmt2.executeQuery(query5);
        
        if(rs5.next())
        {
        	
        
        
        
        String query = "SELECT Customer_id FROM account WHERE Customer_id = " + customerId;
        
        Statement stmt=con.createStatement();
        
        ResultSet rs=stmt.executeQuery(query);
        
        if(rs.next())
        {
        	response.sendRedirect("customer.jsp");
        }
        else
        {
        
        // Define the SQL query for inserting data into the database
        String sql = "INSERT INTO Account (account_type, Customer_id, card_number, pin, balance, account_status) VALUES (?, ?, ?, ?, ?, ?)";

        // Create a prepared statement for the insertion
        statement = con.prepareStatement(sql);
        statement.setString(1, accountType);
        statement.setInt(2, customerId);
        statement.setString(3, cardNumber);
        statement.setInt(4, pin);
        statement.setDouble(5, balance);
        statement.setString(6, accountStatus);

        // Execute the insertion
        int rowsInserted = statement.executeUpdate();
        if (rowsInserted > 0) 
        {
        	response.sendRedirect("added.jsp");
        } 
        else 
        {
            out.print("Failed to insert the record.");
        }
        }
        }
        else
        {
        	response.sendRedirect("notRegister.jsp");
       
        }
    } catch (Exception e)
    {
        e.printStackTrace();
        out.print("An error occurred while processing your request.");
    
    }
}
}




