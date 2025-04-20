

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class withDraw
 */
@WebServlet("/withDraw")
public class withDraw extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public withDraw() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @throws IOException 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        double amount = Double.parseDouble(request.getParameter("amount"));
        int pin = Integer.parseInt(request.getParameter("pin"));

        HttpSession session = request.getSession(); // Get the session from the request
        PrintWriter pw=response.getWriter();
        String userEmail = (String) session.getAttribute("email");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/internet", "root", "");

            Statement stmt = con.createStatement();

            String query = "SELECT * FROM customers WHERE email = '" + userEmail + "'";
            
            ResultSet rs = stmt.executeQuery(query);
            
            if(rs.next())
            {
            	int customerID=Integer.parseInt(rs.getString(1));
            	
            	 String query2 = "SELECT * FROM account WHERE Customer_id = '" + customerID + "'";
            	 
                 
                 ResultSet rs2 = stmt.executeQuery(query2);
                 
                 if(rs2.next())
                 {

                	 double dbamt=Double.parseDouble(rs2.getString(6));
                	
                	 int dbpin=Integer.parseInt(rs2.getString(5));
                	 
                	 String cardNo=rs2.getString(4);
                	 
                	 String status=rs2.getString(7);
                	 
                	 if(status.equals("lock"))
                	 {
                		 response.sendRedirect("users/locked.jsp");
                	 }
                	 else
                	 {
                		 if(dbpin==pin)
                		 {
                			 if(amount<dbamt)
                			 {
                				    String query3 = "UPDATE account SET balance = balance - " + amount + " WHERE Customer_id = '" + customerID + "'";
                				    stmt.executeUpdate(query3);
                				    
                				    String query4 = "INSERT INTO transcations(Customer_id,fromCardNo,toCardNumber,Transcation_type,Amount,Transcation_date) values('"+customerID+"','"+cardNo+"','self','withDraw','"+amount+"',Now())";
                				    stmt.executeUpdate(query4);

                       			 response.sendRedirect("users/withDrawnSuccess.jsp"); 

                			 }
                			 else
                			 {
                       			 response.sendRedirect("users/amtOver.jsp"); 
 
                			 }
                		 }
                		 else
                		 {
                			 response.sendRedirect("users/pinWrong.jsp"); 
                		 }
                	 }


                 }
                 

            }

           

            con.close(); // Close the database connection
        } catch (Exception e) {
            e.printStackTrace(); // Handle exceptions appropriately, log or display an error message
        }
    }


	}


