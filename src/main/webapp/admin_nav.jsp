<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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


</head>

<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="70">

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
                    <a class="nav-link" href="admin_dashboard.jsp">Admin dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="add_user.jsp">Add user</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addAccount.jsp">Add Account</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="add_branch.jsp">Add branch</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="profileDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Profile
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="profileDropdown">
                        <li><a class="dropdown-item" href="viewProfile.jsp">View</a></li>
                        <li><a class="dropdown-item" href="updateProfile.jsp">Update</a></li>
                    </ul>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="logout">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav><!-- //NAVBAR -->
</body>
</html>
