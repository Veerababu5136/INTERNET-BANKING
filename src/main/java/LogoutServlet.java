import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet 
{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the current session or create a new one if it doesn't exist
        HttpSession session = request.getSession(false);

        if (session != null) {
            // Invalidate the session (destroy it)
            session.invalidate();
        }

        // Redirect the user to the login page or any other appropriate page
        response.sendRedirect("index.jsp"); // Replace with your actual login page URL
    }
}
