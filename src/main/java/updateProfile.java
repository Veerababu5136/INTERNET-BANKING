

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
 * Servlet implementation class updateProfile
 */
@WebServlet("/updateProfile")
public class updateProfile extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the updated name and password from the form
        String updatedName = request.getParameter("name");
        String updatedPassword = request.getParameter("password");

        // Get the user's email from the session
        String userEmail = (String) request.getSession().getAttribute("email");

        Connection conn = null;
        PreparedStatement preparedStatement = null;

        try {
            // Establish a database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/internet", "root", "");

            // Prepare a SQL query to update user data by email
            String sql = "UPDATE admins SET name = ?, password = ? WHERE email = ?";
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, updatedName);
            preparedStatement.setString(2, updatedPassword);
            preparedStatement.setString(3, userEmail);

            // Execute the update query
            int rowsUpdated = preparedStatement.executeUpdate();

            if (rowsUpdated > 0) {
response.sendRedirect("updated.jsp");
} 
            else {
                response.getWriter().println("Profile update failed");
            }
        } catch (Exception e) 
        {
            e.printStackTrace();
            response.getWriter().println("An error occurred while updating the profile");
        
        }
    }
}
