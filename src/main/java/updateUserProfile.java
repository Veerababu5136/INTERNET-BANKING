

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateUserProfile
 */
@WebServlet("/updateUserProfile")
public class updateUserProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateUserProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
        // Retrieve other form parameters
        String customerName = request.getParameter("customerName");
        String dob = request.getParameter("dob");
        String phoneNumber = request.getParameter("phoneNumber");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender");
        String permanentAddress = request.getParameter("permanentAddress");
        String presentAddress = request.getParameter("presentAddress");
System.out.print(request.getParameter("presentAddress"));
        try {
            // Update the database with the new information
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (
            		
            		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/internet", "root", "");
                 PreparedStatement stmt = con.prepareStatement(
                         "UPDATE customers SET customerName=?, dob=?, phoneNumber=?, password=?, gender=?, permanentAddress=?, presentAddress=? WHERE email=?")) {

                stmt.setString(1, customerName);
                stmt.setString(2, dob);
                stmt.setString(3, phoneNumber);
                stmt.setString(4, password);
                stmt.setString(5, gender);
                stmt.setString(6, permanentAddress);
                stmt.setString(7, presentAddress);
                stmt.setString(8, email);

                int rowsAffected = stmt.executeUpdate();

                if (rowsAffected > 0) {
                    // Successfully updated
                	response.sendRedirect("users/updated.jsp");
                } else {
                    // Handle the case where no rows were updated
                    response.sendRedirect("users/pinWrong.jsp");
                }
            }
        } 
        catch (Exception e)
        {
            e.printStackTrace();
            // Handle exceptions appropriately
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Internal Server Error");
        }
	}

}
