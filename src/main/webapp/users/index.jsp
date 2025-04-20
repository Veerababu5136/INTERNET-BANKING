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


    <title>User Login</title>
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
                    <a class="nav-link" href="../index.jsp">Admin Login</a>
                </li>
                
                
                  
            </ul>
        </div>
    </div>
</nav><!-- //NAVBAR -->

<section class="background-radial-gradient overflow-hidden" style="background-image: url('https://images.template.net/wp-content/uploads/2015/11/25190558/Plain-Dark-Blue-Background-Images-Download.jpg'); background-repeat: no-repeat; background-size: cover;">
  <div class="container px-4 py-5 px-md-5 text-center text-lg-start my-5">
    <div class="row gx-lg-5 align-items-center mb-5">
      <div class="col-lg-6 mb-5 mb-lg-0" style="z-index: 10">
        <h1 class="my-5 display-5 fw-bold ls-tight" style="color: hsl(218, 81%, 95%)">
          Our Vision <br />
          <span style="color: hsl(218, 81%, 75%)">for your future generation</span>
        </h1>
        <p class="mb-4 opacity-70" style="color: hsl(218, 81%, 85%)">
Banking at finger tips        </p>
      </div>

      <div class="col-lg-6 mb-5 mb-lg-0 position-relative">
        <div id="radius-shape-1" class="position-absolute rounded-circle shadow-5-strong"></div>
        <div id="radius-shape-2" class="position-absolute shadow-5-strong"></div>

        <div class="card bg-glass">
          <div class="card-body px-4 py-5 px-md-5">
            <div class="text-center">
            <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">User Login</h3>
            </div>
            <form method="post" action="../validate2">
              <!-- Email input -->
              <div class="form-outline mb-4">
                <input type="email" id="form3Example3" class="form-control" name="email"  autofocus required/>
                <label class="form-label" for="form3Example3">Email address</label>
              </div>

              <!-- Password input -->
              <div class="form-outline mb-4">
                <input type="password" id="form3Example4" class="form-control" name="password"  required/>
                <label class="form-label" for="form3Example4">Password</label>
              </div>

             
              <!-- Submit button -->
              <button type="submit" class="btn btn-primary btn-block mb-4" (click)="OnUserLogin()">
                Log in
              </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    

<footer>
    <div class="footer-top">
        <div class="container">
            <div class="row gy-4">
                <div class="col-lg-4">
                     <a class="navbar-brand" href="#" style="color: white; font-weight: bold;">
            Internet Banking System
        </a>
                </div>
                <div class="col-lg-2">
                    <h5 class="text-white">Quick Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="#home">Home</a></li>
                        <li><a href="#services">Donate</a></li>
                        <li><a href="#features">Request</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div>
                <div class="col-lg-2">
                    <h5 class="text-white">Resources</h5>
                    <ul class="list-unstyled">
                        <li><a href="#blog">Blog</a></li>
                        <li><a href="#">FAQ's</a></li>
                        <li><a href="#">Privacy & Policy</a></li>
                        <li><a href="#">Terms of Service</a></li>
                    </ul>
                </div>
                <div class="col-lg-4">
                    <h5 class="text-white">Contact Information</h5>
                    <ul class="list-unstyled">
                        <li>Address: 123 Donation Street, City, State, ZIP</li>
                        <li>Email: info@yourwebsite.com</li>
                        <li>Phone: (123) 456-7890</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <p class="mb-0">© 2023 Your Website. All rights reserved. Designed with <i class="bx bx-heart text-danger"></i> by <a href="https://www.yourwebsite.com" class="text-white">Your Company</a></p>
                </div>
                <div class="col-md-6">
                    <div class="social-icons">
                        <a href="#"><i class='bx bxl-facebook'></i></a>
                        <a href="#"><i class='bx bxl-twitter'></i></a>
                        <a href="#"><i class='bx bxl-instagram-alt'></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
</body>
</html>