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
    <!-- HERO -->
    <div class="hero vh-100 d-flex align-items-center" id="home">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 mx-auto text-center">
    <h1 class="display-4 text-white">Bank Securely Online</h1>
    <p class="text-white my-3">Manage your finances and banking needs from the comfort of your home. Securely access your accounts, transfer funds, and more.</p>
    <a href="#services" class="btn me-2 btn-primary">Log In</a>
    <a href="#features" class="btn btn-outline-light">Learn More</a>
</div>

            </div>
        </div>
    </div><!-- //HERO -->
    

   <section id="services">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md-8 mx-auto text-center">
                <h6 class="text-primary">SERVICES</h6>
                <h1>Our Banking Services</h1>
                <p>Explore the range of services we offer for our customers.</p>
            </div>
        </div>
        <div class="row g-4">
            <div class="col-lg-4 col-sm-6">
                <div class="service card-effect bounceInUp">
                    <div class="iconbox">
                        <i class='bx bxs-user'></i>
                    </div>
                    <a href="totalCustomers.jsp"><h5 class="mt-4 mb-2">Customers</h5></a>
                    <p>View information about our valued customers.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
                <div class="service card-effect">
                    <div class="iconbox">
                        <i class='bx bxs-credit-card'></i>
                    </div>
                   <a href="totalAccounts.jsp"> <h5 class="mt-4 mb-2">Accounts</h5></a>
                    <p>Manage and track details of customer accounts.</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6">
    <div class="service card-effect">
        <div class="iconbox">
          <iconify-icon icon="grommet-icons:money"></iconify-icon>
        </div>
                   <a href="transcationHistory.jsp"> <h5 class="mt-4 mb-2">Transcations</h5></a>
        <p>Monitor and review all customer transactions.</p>
    </div>
</div>
        </div>
    </div>
</section>

    
    <jsp:include page="admin_footer.jsp"></jsp:include>
    
    </body>
    </html>