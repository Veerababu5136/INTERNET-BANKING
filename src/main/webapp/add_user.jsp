<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.SQLException" %>
    
<jsp:include page="sesssionValidation.jsp"></jsp:include>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/boxicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    
    <link rel="stylesheet" href="css/style.css">

    <title>Add Customer</title>
    
   
</head>

<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="70">

<jsp:include page="admin_nav.jsp"></jsp:include>
   
   
    

   <div class="container mt-5"><br>
    <h2 class="text-center">User Registration Form</h2>
    <form action="userRegistrationForm" method="post">
        <div class="form-group">
            <label for="customerName">Customer Name:</label>
            <input type="text" class="form-control" name="customerName" required>
        </div><br>

        <div class="form-group">
            <label for="dob">Date of Birth:</label>
            <input type="date" class="form-control" name="dob" required>
        </div><br>

        <div class="form-group">
            <label for="phoneNumber">Phone Number:</label>
            <input type="tel" class="form-control" name="phoneNumber" required>
        </div><br>

        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" name="email" required>
        </div><br>

        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" name="password" required>
        </div><br>

        <div class="form-group">
            <label>Gender:</label>
            <div class="form-check">
                <input type="radio" class="form-check-input" id="male" name="gender" value="male">
                <label class="form-check-label" for="male">Male</label>
            </div><br>
            <div class="form-check">
                <input type="radio" class="form-check-input" id="female" name="gender" value="female">
                <label class="form-check-label" for="female">Female</label>
            </div>
        </div><br>

        <div class="form-group">
            <label for="branch">Branch:</label>
            <select class="form-control" name="branch">
            <% 
            try {
                // Import necessary classes for database connectivity
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/internet", "root", "");
                String sql = "SELECT id, branch_name FROM branch";
                PreparedStatement statement = connection.prepareStatement(sql);
                ResultSet resultSet = statement.executeQuery();

                while (resultSet.next()) {
                    String branchId = resultSet.getString("id");
                    String branchName = resultSet.getString("branch_name");
            %>
                    <option value="<%= branchId %>"><%= branchName %></option>
            <%
                }
                resultSet.close();
                statement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            %>
        </select>
        </div><br>

        <div class="form-group">
            <label for="permanentAddress">Permanent Address:</label>
            <textarea class="form-control" name="permanentAddress" rows="3" required></textarea>
        </div><br>

        <div class="form-group">
            <label for="presentAddress">Present Address:</label>
            <textarea class="form-control" name="presentAddress" rows="3" required></textarea>
        </div><br>

        <center><button type="submit" class="btn btn-primary text-center">Submit</button></center>
    </form>
</div>

    
    <jsp:include page="admin_footer.jsp"></jsp:include>
    
    </body>
    </html>