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


    <title>Admin dashboard</title>
</head>

<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="70">

<jsp:include page="admin_nav.jsp"></jsp:include>
    
    
    <br>    <br>
    
    <div class="container">
        <h2 class="my-4 text-center">Add Branch</h2>
        <form id="branchForm" action="addBranch" method="post">
            <div class="mb-3">
                <label for="branchID" class="form-label">Branch ID</label>
                <input type="text" class="form-control" id="branchID" name="branchID" required>
            </div>
            <div class="mb-3">
                <label for="branchName" class="form-label">Branch Name</label>
                <input type="text" class="form-control" id="branchName" name="branchName" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    
    
    
    
    

    
    <jsp:include page="admin_footer.jsp"></jsp:include>
    
    </body>
    </html>