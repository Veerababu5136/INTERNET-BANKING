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
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
    <link rel="stylesheet" href="css/style.css">


    <title>User dashboard</title>
</head>

<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="70">

<jsp:include page="user_nav.jsp"></jsp:include>




<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    Account Transfer
                </div>
                <div class="card-body">
                    <form action="../accountTransfer" method="post">
                        <div class="mb-3">
                            <label for="cardNumber">Card Number (16 digits)</label>
                            <input type="text" class="form-control" id="cardNumber" name="cardNumber" pattern="[0-9]{16}" maxlength="16" required>
                        </div>
                        <div class="mb-3">
                            <label for="amount">Amount</label>
                            <input type="number" class="form-control" id="amount" name="amount" min="1" required>
                        </div>
                        <div class="mb-3">
                            <label for="pin">PIN (4 digits)</label>
                            <input type="password" class="form-control" id="pin" name="pin" pattern="[0-9]{4}" required>
                        </div>
                        <button type="submit" class="btn btn-info">Transfer</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

    <jsp:include page="user_footer.jsp"></jsp:include>
    
    </body>
    </html>

