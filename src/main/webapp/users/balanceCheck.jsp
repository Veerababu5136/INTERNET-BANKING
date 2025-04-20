<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<html>
<head>
    <title>Bootstrap Modal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%
HttpSession sesssion = request.getSession(); // Get the session from the request
String userEmail = (String) sesssion.getAttribute("email");


double dbamt = 0; // Initialize the variable outside the try block

try {
    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/internet", "root", "");

    Statement stmt = con.createStatement();

    String query = "SELECT * FROM customers WHERE email = '" + userEmail + "'";

    ResultSet rs = stmt.executeQuery(query);

    if (rs.next()) {
        int customerID = Integer.parseInt(rs.getString(1));

        String query2 = "SELECT * FROM account WHERE Customer_id = '" + customerID + "'";


        ResultSet rs2 = stmt.executeQuery(query2);

        if (rs2.next()) {
           dbamt = Double.parseDouble(rs2.getString(6));
        }
    }
} catch (Exception e) {
    e.printStackTrace();
}

%>
<!-- The Modal -->
<div class="modal" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Account balance</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                        onclick="redirectToDashboard()"></button>
            </div>

            <!-- Modal Body -->
            <div class="modal-body">
                <!-- Display balance data obtained from Java -->
                <input type="text" id="balanceInput" class="form-control" value="<%=dbamt %>" disabled>
            </div>

            <!-- Modal Footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"
                        onclick="redirectToDashboard()">Close
                </button>
                <!-- Button to navigate to user_dashboard.jsp -->
                <button type="button" class="btn btn-primary" onclick="redirectToDashboard()">Go to Dashboard</button>
            </div>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Script to open the modal automatically -->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        var myModal = new bootstrap.Modal(document.getElementById('myModal'));
        myModal.show();
    });

    // Function to redirect to user_dashboard.jsp
    function redirectToDashboard() {
        // Use window.location.href to navigate to the desired page
        window.location.href = 'user_dashboard.jsp';
    }
</script>

</body>
</html>
