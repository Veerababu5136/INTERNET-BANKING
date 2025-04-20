<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<jsp:include page="sesssionValidation.jsp"></jsp:include>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/boxicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link rel="stylesheet" href="css/style.css">
    <title>Admin Profile</title>
</head>
<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="70">
    <jsp:include page="admin_nav.jsp"></jsp:include>

    <%
        String userEmail = (String) session.getAttribute("email");

        Connection conn = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            // Establish a database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/internet", "root", "");

            // Prepare a SQL query to retrieve user data by email
            String sql = "SELECT * FROM admins WHERE email = ?";
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, userEmail);

            // Execute the query and retrieve the user's data
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                String id = resultSet.getString("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");

                // Set the data in request attributes
                request.setAttribute("id", id);
                request.setAttribute("name", name);
                request.setAttribute("email", email);
                request.setAttribute("password", password);
            } else {
                response.getWriter().println("User not found");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred while fetching user data");
        } finally {
            // Close resources and the database connection
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (preparedStatement != null) {
                    preparedStatement.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    %>
<br><br>

    <div class="container">
    <br><br>
    
        <h3 class="text-center">Admin Profile</h3>
        <form action="updateProfile" method="post">
            <div class="mb-3">
                <label for="id" class="form-label">ID:</label>
                <input type="text" id="id" name="id" class="form-control" value="<%= request.getAttribute("id") %>" readonly>
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">Name:</label>
                <input type="text" id="name" name="name" class="form-control" value="<%= request.getAttribute("name") %>">
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" id="email" name="email" class="form-control" value="<%= request.getAttribute("email") %>" readonly>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input type="password" id="password" name="password" class="form-control" value="<%= request.getAttribute("password") %>">
            </div>
            <input type="submit" value="update" class="btn btn-primary">
        </form>
    </div>
    <jsp:include page="admin_footer.jsp"></jsp:include>
</body>
</html>
