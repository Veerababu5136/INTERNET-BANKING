<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/boxicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    
    <link rel="stylesheet" href="../css/style.css">


</head>

<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="70">

<style>
.navbar .nav-link {
    font-size: 13px;
    font-weight: 700;
}
</style>
  <!-- NAVBAR -->
<nav class="navbar navbar-expand-lg py-3 sticky-top navbar-light bg-white">
    <div class="container">
        <a class="navbar-brand" href="#" style="color: black; font-weight: bold;">
            Internet Banking System
        </a>
        
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="user_dashboard.jsp">User dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="withDraw.jsp">With draw</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="depositAmount.jsp">deposit Amount</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="accountTransfer.jsp">Account Transfer</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="balanceCheck.jsp">balance Check</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="fetchAccount.jsp">Fetch Account</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="transcationHistory.jsp">transcation History</a>
                </li>

               
                
                <li class="nav-item">
                    <a class="nav-link" href="../logout">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav><!-- //NAVBAR -->
</body>
</html>
