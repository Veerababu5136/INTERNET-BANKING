<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.*" %>
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
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <title>Admin dashboard</title>
</head>
<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="70">
<jsp:include page="admin_nav.jsp"></jsp:include>

<style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #000;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        /* Add media query for smaller screens */
        @media screen and (max-width: 600px) {
            table {
                width: 100%;
            }

            th, td {
                display: block;
            }

            th {
                text-align: left;
            }

            td {
                text-align: left;
            }
        }
    </style>
    <br>    <br>
    
<div class="container">    <br>
    <br>

    <h3 class="text-center">Customers Information</h3>    <br>
        <br>
    
    <table class="table">
        <tr>
            <th>Customer ID</th>
            <th>Name</th>
                        <th>Email</th>
            
            <th>Mobile No</th>
            <th>Date of Birth</th>
            <th>Gender</th>
            <th>Branch Name</th>
            <th>Permanent Address</th>
            <th>Present Address</th>
            <th>Registration Date</th>
        </tr>
        <%
            try {
            	 // Establish a database connection
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/internet", "root", "");

                // SQL query to retrieve customer information with branch names
                String sqlQuery = "SELECT c.Customer_id AS CustomerID, c.customerName AS Name, " +
                    "c.phoneNumber AS MobileNo, c.dob AS DateOfBirth, c.gender AS Gender, " +
                    "b.branch_name AS BranchName, c.permanentAddress AS PermanentAddress, " +
                    "c.presentAddress AS PresentAddress, c.reg AS RegistrationDate, " +
                    "c.email AS Email " +
                    "FROM customers c " +
                    "LEFT JOIN account a ON c.Customer_id = a.Customer_id " +
                    "LEFT JOIN branch b ON c.branch = b.id";

                // Create a prepared statement
                PreparedStatement preparedStatement = conn.prepareStatement(sqlQuery);

                // Execute the query and retrieve the results
                ResultSet resultSet = preparedStatement.executeQuery();

                // Loop through the ResultSet and generate rows for each customer
                while (resultSet.next()) {
                	 int customerID = resultSet.getInt("CustomerID");
                     String name = resultSet.getString("Name");
                     String mobileNo = resultSet.getString("MobileNo");
                     String dob = resultSet.getString("DateOfBirth");
                     String gender = resultSet.getString("Gender");
                     String branchName = resultSet.getString("BranchName");
                     String permanentAddress = resultSet.getString("PermanentAddress");
                     String presentAddress = resultSet.getString("PresentAddress");
                     String registrationDate = resultSet.getString("RegistrationDate");
                     String email = resultSet.getString("Email");

        %>
        <tr>
            <td><%= customerID %></td>
            <td><%= name %></td>
                        <td><%= email %></td>
            
            <td><%= mobileNo %></td>
            <td><%= dob %></td>
            <td><%= gender %></td>
            <td><%= branchName %></td>
            <td><%= permanentAddress %></td>
            <td><%= presentAddress %></td>
            <td><%= registrationDate %></td>
        </tr>
        <%
                }
                resultSet.close();
                preparedStatement.close();
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
</div>

<jsp:include page="admin_footer.jsp"></jsp:include>
</body>
</html>
