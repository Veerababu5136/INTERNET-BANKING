

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class accountTransfer
 */
@WebServlet("/accountTransfer")
public class accountTransfer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public accountTransfer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	  String cardNo=request.getParameter("cardNumber");
	  double amount = Double.parseDouble(request.getParameter("amount"));
      int pin = Integer.parseInt(request.getParameter("pin"));

      HttpSession session = request.getSession(); // Get the session from the request
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
              	 
              	 
              	 
              	 String status=rs2.getString(7);
              	 
              	 if(status.equals("lock"))
              	 {
              		 response.sendRedirect("users/locked.jsp");
              	 }
              	 else
              	 {
              		 String query5 = "SELECT * FROM account WHERE card_number = '" + cardNo + "'";
                  	 
                     
                     ResultSet rs3 = stmt.executeQuery(query5);
                    
                     
                     if(rs3.next())
                     { 
              		 String dbCardNo=rs3.getString(4);
              		 
              		 if(dbpin==pin)
              		 {
              			 if(amount<dbamt)
              			 {
              				 
              				    String query3 = "UPDATE account SET balance = balance - " + amount + " WHERE Customer_id = '" + customerID + "'";
              				    stmt.executeUpdate(query3);
              				    
              				  String query4 = "INSERT INTO transcations(Customer_id,fromCardNo,toCardNumber,Transcation_type,Amount,Transcation_date) values('"+customerID+"','"+cardNo+"','"+dbCardNo+"','Account Transfer','"+amount+"',Now())";
          				    stmt.executeUpdate(query4);

                     			 response.sendRedirect("users/transferuccess.jsp"); 

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
              		 else
              		 {
              			response.sendRedirect("users/cardNoWrong.jsp"); 
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
