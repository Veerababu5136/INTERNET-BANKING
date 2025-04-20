<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*,java.io.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>
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


    <title>Transcation History</title>
</head>

<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="70">

<jsp:include page="admin_nav.jsp"></jsp:include>


<%
HttpSession sesssion = request.getSession(); // Get the session from the request
String userEmail = (String) sesssion.getAttribute("email");


String dbCardNumber; // Initialize the variable outside the try block

try {
    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/internet", "root", "");

    Statement stmt = con.createStatement();

    String query = "SELECT * FROM customers WHERE email = '" + userEmail + "'";

    ResultSet rs = stmt.executeQuery(query);

    PrintWriter pw=response.getWriter();  

    
    if (rs.next()) 
    {
        int customerID = Integer.parseInt(rs.getString(1));

        String query2 = "SELECT * FROM transcations ORDER BY Customer_id ASC";


        ResultSet rs2 = stmt.executeQuery(query2);

       
        	
        	%>
        	
        	 
<div class="container mt-5">
  <table class="table">
    <thead>
      <tr>
        <th scope="col">Transaction ID</th>
        <th scope="col">Customer ID</th>
        <th scope="col">From Card No</th>
        <th scope="col">To Card No</th>
        <th scope="col">Transaction Type</th>
        <th scope="col">Amount</th>
        <th scope="col">Transaction Date</th>
      </tr>
    </thead>
    <tbody>
     <%
     while(rs2.next()) 
        {
    	 
    	 %>
      <tr>
        <td><%=rs2.getString(1)%></td>
        <td><%=rs2.getString(2)%></td>
        <td><%=rs2.getString(3)%></td>
        <td><%=rs2.getString(4)%></td>
        <td><%=rs2.getString(5)%></td>
        <td><%=rs2.getString(6)%></td>
        <td><%=rs2.getString(7)%></td>
      </tr>
      
      	<%
        	
        }
     
     %>
      <!-- Add more rows as needed -->
    </tbody>
  </table>
</div>
   
   
   
        	<%
        	
        
    }
} 

catch (Exception e) 
{
    e.printStackTrace();
}

%>

  
   
   
   
   
    <jsp:include page="admin_footer.jsp"></jsp:include>
    
    </body>
