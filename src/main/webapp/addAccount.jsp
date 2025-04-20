<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   
   
    

<br>
<div class="container"><br>

        <h2 class="text-center">Account Registration</h2><br>
        <br>
        
        <form action="addAccount" method="post"> <!-- Specify the action and method for the form -->
        
        <div class="form-group">
                <label for="cardNumber">Customer Id:</label>
                <input type="number" class="form-control" name="customerId"  min="1"  required>
            </div><br>
            
            
            
            <div class="form-group">
                <label for="accountType">Account Type:</label>
                <select class="form-control" name="accountType" required>
                    <option value="Savings">Savings</option>
                    <option value="Current">Current</option>
                                        <option value="Checking">Zero Balance</option>
                    
                    <!-- Add more account types if needed -->
                </select>
            </div><br>
            
            <div class="form-group">
            
                <label for="cardNumber">Card Number:</label>
                            <input type="text" class="form-control" id="cardNumber" name="cardNumber" pattern="[0-9]{16}" maxlength="16" required>
            </div><br>
            
            <div class="form-group">
                <label for="pin">PIN:</label>
                            <input type="password" class="form-control" id="pin" name="pin" pattern="[0-9]{4}" required>
            </div><br>
            
            <div class="form-group">
                <label for="balance">Balance:</label>
                <input type="number" step="0.01" class="form-control" name="balance" min="0" required>
            </div><br>
            
            <div class="form-group">
                <label for="accountStatus">Account Status:</label>
                <select class="form-control" name="accountStatus" required>
                    <option value="open">open</option>
                    <option value="lock">lock</option>
                    <!-- Add more account status options if needed -->
                </select>
            </div><br>
            
            <button type="submit" class="btn btn-primary">Register Account</button>
        </form>
    </div><br>
    
    <jsp:include page="admin_footer.jsp"></jsp:include>

</body>
</html>