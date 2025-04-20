<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
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
span
{
color:white;
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
</head>
<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="70">
<jsp:include page="admin_nav.jsp"></jsp:include>
<br>
<div class="container"><br>
<br>

    <h3 class="text-center">Accounts Information</h3><br>
    <br>
    
    <table class="table">
        <tr>
            <th>Account ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Mobile No</th>
            <th>Card Number</th>
            <th>Pin</th>
            <th>Account Type</th>
            <th>Account Status</th>
            <th>Change Status</th>
            <th>Checkbook Status</th>
        </tr>
        <%
            try {
                // Establish a database connection
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/internet", "root", "");

                // SQL query to retrieve customer information with your provided query
               String sqlQuery = "SELECT a.account_id AS AccountID, " +
                  "c.customerName AS Name, " +
                  "c.email AS Email, " +
                  "c.phoneNumber AS MobileNo, " +
                  "a.card_number AS CardNumber, " +
                  "a.pin AS Pin, " +
                  "a.account_type AS AccountType, " +
                  "a.account_status AS AccountStatus, " +
                		  "a.Customer_id AS cid, " +
                  "cb.status AS CheckbookStatus " +
                  "FROM customers c " +
                  "LEFT JOIN account a ON c.Customer_id = a.Customer_id " +
                  "LEFT JOIN checkbook cb ON c.Customer_id = cb.Customer_id " +
                  "ORDER BY a.account_id ASC";

                // Create a prepared statement
                PreparedStatement preparedStatement = conn.prepareStatement(sqlQuery);


                // Execute the query and retrieve the results
                ResultSet resultSet = preparedStatement.executeQuery();

                // Loop through the ResultSet and generate rows for each customer
                while (resultSet.next()) {
                    int accountID = resultSet.getInt("AccountID");
                    int customerID = resultSet.getInt("cid");

                    String name = resultSet.getString("Name");
                    String email = resultSet.getString("Email");
                    String mobileNo = resultSet.getString("MobileNo");
                    String cardNumber = resultSet.getString("CardNumber");
                    String pin = resultSet.getString("Pin");
                    String accountType = resultSet.getString("AccountType");
                    String accountStatus = resultSet.getString("AccountStatus");
                    String checkbookStatus = resultSet.getString("CheckbookStatus");
        %>
        <tr>
            <td><%= accountID %></td>
            <td><%= name %></td>
            <td><%= email %></td>
            <td><%= mobileNo %></td>
            <td><%= cardNumber %></td>
            <td><%= pin %></td>
            <td><%= accountType %></td>
            <td><%= accountStatus %></td>
           <td>
           
           <%
           if(accountStatus.equals("open"))
           {
        	   %>
        	   
        	       <a href="lock?accountID=<%= accountID %>" class="btn btn-danger">Lock</a>
        	   <% 
           }
           else
           {
        	   %>

    	       <a href="open?accountID=<%= accountID %>" class="btn btn-success">open</a>
<% 
           }
           
           %>
           
   
</td>

            
            
            
            <td> <%
           if(checkbookStatus.equals("Applied"))
           {
        	   %>
        	   
        	       <a href="approveCheckbook?customerID=<%= customerID %>" class="btn btn-success">Approve</a>
        	   <% 
           }
           else
           {
        	   %>

    	       <%=checkbookStatus %>
<% 
           }
           
           %></td>
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
