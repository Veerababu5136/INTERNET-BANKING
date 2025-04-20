<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<jsp:include page="sesssionValidation.jsp"></jsp:include>

<!DOCTYPE html>
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

    <title>User Dashboard</title>
</head>
<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="70">

<jsp:include page="user_nav.jsp"></jsp:include>

<%
    HttpSession sesssion = request.getSession();
    String userEmail = (String) sesssion.getAttribute("email");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/internet", "root", "");
        Statement stmt = con.createStatement();

        String query = "SELECT * FROM customers WHERE email = '" + userEmail + "'";
        ResultSet rs = stmt.executeQuery(query);

        if (rs.next()) {
            int customerID = rs.getInt("Customer_id");
            String customerName = rs.getString("customerName");
            String dob = rs.getString("dob");
            String phoneNumber = rs.getString("phoneNumber");
            String email = rs.getString("email");
            String password = rs.getString("password");
            String gender = rs.getString("gender");
            String branch = rs.getString("branch");
            String permanentAddress = rs.getString("permanentAddress");
            String presentAddress = rs.getString("presentAddress");
            String reg = rs.getString("reg");
            
            String query2 = "SELECT * FROM checkbook WHERE Customer_id = '" + customerID + "'";
            ResultSet rs2=stmt.executeQuery(query2);
            rs2.next();
            String status=rs2.getString(3);

            
%>
<div class="container mt-5">
    <div class="card">
        <div class="card-header">
            Customer Information
        </div>
        <div class="card-body">
            <form method="post" action="../updateUserProfile">
                <div class="mb-3">
                    <label for="customerId" class="form-label">Customer ID</label>
                    <input type="text" class="form-control" name="customerId" value="<%= customerID %>" readonly>
                </div>
                <div class="mb-3">
                    <label for="customerName" class="form-label">Name</label>
                    <input type="text" class="form-control" name="customerName" value="<%= customerName %>">
                </div>
                <div class="mb-3">
                    <label for="dob" class="form-label">Date of Birth</label>
                    <input type="text" class="form-control" name="dob" value="<%= dob %>">
                </div>
                <div class="mb-3">
                    <label for="phoneNumber" class="form-label">Phone Number</label>
                    <input type="text" class="form-control" name="phoneNumber" value="<%= phoneNumber %>">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="text" class="form-control" name="email" value="<%= email %>" readonly>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" name="password" value="<%= password %>">
                </div>
                <div class="mb-3">
                    <label for="gender" class="form-label">Gender</label>
                    <input type="text" class="form-control" name="gender" value="<%= gender %>">
                </div>
                <div class="mb-3">
                    <label for="branch" class="form-label">Branch</label>
                    <input type="text" class="form-control" name="branch" value="<%= branch %>" readonly>
                </div>
                <div class="mb-3">
                    <label for="permanentAddress" class="form-label">Permanent Address</label>
                    <textarea class="form-control" name="permanentAddress" rows="3"><%= permanentAddress %> </textarea>
                </div>
                <div class="mb-3">
                    <label for="presentAddress" class="form-label">Present Address</label>
                    <textarea class="form-control" name="presentAddress" rows="3"><%= presentAddress %></textarea>
                </div>
                <div class="mb-3">
                    <label for="reg" class="form-label">Registration Date</label>
                    <input type="text" class="form-control" id="reg" value="<%= reg %>" readonly>
                </div>
                
                <button type="submit" class="btn btn-primary">Update Information</button>&nbsp;&nbsp;
                
                
                   <%
           if(status.equals("Not Applied"))
           {
        	   %>
        	   
        	       <a href="../requestCheckbook?customerID=<%= customerID %>" class="btn btn-success">Request Checkbook</a>
        	   <% 
           }
           else if(status.equals("Applied"))
           {
        	   %>

        	       	       <input type="button" class="btn btn-warning" value="Pending" disabled>
<% 
           }
           else
           {
        	   %>
        	       	       <input type="button" class="btn btn-info" value="Approved" disabled>
        	   
        	   <%
           }
           
           %>
                
            </form>
        </div>
    </div>
</div>

<%
        }
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<jsp:include page="user_footer.jsp"></jsp:include>

</body>
</html>
