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
    </div><!-- //HERO --><br>
    <!-- INTERNET BANKING FEATURES -->
<section class="row w-100 py-0 bg-light" id="features">
    <div class="col-lg-6 col-img"></div>
    <div class="col-lg-6 py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <h6 class="text-primary">WHY CHOOSE US</h6>
                    <h1>Why Choose Our Internet Banking System</h1>
                    <p>Discover the features that make our system the best choice for secure and efficient online banking.</p>

                    <div class="feature d-flex mt-5">
                        <div class="iconbox me-3">
                            <i class='bx bxs-book'></i>
                        </div>
                        <div>
                            <h5>Account Management</h5>
                            <p>Effortlessly manage your accounts with our Internet Banking System, providing a comprehensive overview of your finances.</p>
                        </div>
                    </div>
                    <div class="feature d-flex">
                        <div class="iconbox me-3">
                            <i class='bx bxs-rocket'></i>
                        </div>
                        <div>
                            <h5>Transaction Efficiency</h5>
                            <p>Experience swift and efficient online transactions, ensuring your banking needs are met with ease.</p>
                        </div>
                    </div>
                    <div class="feature d-flex">
                        <div class="iconbox me-3">
                            <i class='bx bxs-shield'></i>
                        </div>
                        <div>
                            <h5>Security Measures</h5>
                            <p>Rest assured with our robust security measures, safeguarding your data and transactions to ensure your privacy and safety.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section><!-- INTERNET BANKING FEATURES -->

    <!-- TEAM -->
    <section id="team">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-8 mx-auto text-center">
                    <h6 class="text-primary">TEAM</h6>
                    <h1>Meet Our Crew Members</h1>
                    <p>Teamwork is the foundation of success, where diverse skills and perspectives unite to achieve common goals. Effective communication fosters collaboration, while shared responsibilities lead to collective ownership and superior outcomes. In essence, teamwork creates a synergy that propels endeavors to new heights.</p>
                </div>
            </div>
            <div class="row text-center g-4">
                <div class="col-lg-4 col-sm-6">
                    <div class="team-member card-effect">
                        <img src="../img/avinash_sir_demy.png" alt="">
                        <h5 class="mb-0 mt-4">G Avinash Sir</h5>
                        <p>Demy Ceo</p>
                        <div class="social-icons">
                            <a href="#"><i class='bx bxl-facebook'></i></a>
                            <a href="#"><i class='bx bxl-twitter'></i></a>
                            <a href="#"><i class='bx bxl-instagram-alt'></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="team-member card-effect">
                        <img src="https://media.licdn.com/dms/image/C5603AQE8OIoOPxbRmw/profile-displayphoto-shrink_400_400/0/1637638929103?e=1706140800&v=beta&t=9QM3-hZ63SEH_eNpU7xq89R7KwNCioObeo_H8vHVjlk" alt="">
                        <h5 class="mb-0 mt-4">Siddarth Sir</h5>
                        <p>Java Trainer</p>
                        <div class="social-icons">
                            <a href="#"><i class='bx bxl-facebook'></i></a>
                            <a href="#"><i class='bx bxl-twitter'></i></a>
                            <a href="#"><i class='bx bxl-instagram-alt'></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="team-member card-effect">
                        <img src="https://media.licdn.com/dms/image/D5603AQH_zZhUjnN0pg/profile-displayphoto-shrink_400_400/0/1673220131994?e=1706140800&v=beta&t=9kAutUzwRiw98_2Y-tR5dap_ULEDGFavc-_E5XC0aNg" alt="">
                        <h5 class="mb-0 mt-4">T Vinay Sir</h5>
                        <p>React Trainer</p>
                        <div class="social-icons">
                            <a href="#"><i class='bx bxl-facebook'></i></a>
                            <a href="#"><i class='bx bxl-twitter'></i></a>
                            <a href="#"><i class='bx bxl-instagram-alt'></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="team-member card-effect">
                        <img src="https://media.licdn.com/dms/image/D5635AQHqeiLSmq-FnQ/profile-framedphoto-shrink_400_400/0/1688207293138?e=1701000000&v=beta&t=XQ-xAx6F-wagrU5fmnyhPLvisbVxxQA4KEpzdf8QLIo" alt="">
                        <h5 class="mb-0 mt-4">S Veerababu</h5>
                        <p>Team Lead</p>
                        <div class="social-icons">
                            <a href="#"><i class='bx bxl-facebook'></i></a>
                            <a href="#"><i class='bx bxl-twitter'></i></a>
                            <a href="#"><i class='bx bxl-instagram-alt'></i></a>
                        </div>
                    </div>
                </div>
           
            
                <div class="col-lg-4 col-sm-6">
                    <div class="team-member card-effect">
                        <img src="https://media.licdn.com/dms/image/D5635AQGH_SQyXcIDSg/profile-framedphoto-shrink_400_400/0/1684676603159?e=1701000000&v=beta&t=D_s7K4sNW4YtQyywS6ukV38yaHMml4SW2rTeRYtID64" alt="">
                        <h5 class="mb-0 mt-4">Jyothi</h5>
                        <p>Web Developer</p>
                        <div class="social-icons">
                            <a href="#"><i class='bx bxl-facebook'></i></a>
                            <a href="#"><i class='bx bxl-twitter'></i></a>
                            <a href="#"><i class='bx bxl-instagram-alt'></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="team-member card-effect">
                        <img src="https://media.licdn.com/dms/image/D5635AQFBIKI9park1Q/profile-framedphoto-shrink_400_400/0/1670634991520?e=1701000000&v=beta&t=9KlS65-UJLa8L7YA0aJsFvQXAg0v4GRoNsb8zXZ3kV8" alt="">
                        <h5 class="mb-0 mt-4">Sravan</h5>
                        <p>Web Developer</p>
                        <div class="social-icons">
                            <a href="#"><i class='bx bxl-facebook'></i></a>
                            <a href="#"><i class='bx bxl-twitter'></i></a>
                            <a href="#"><i class='bx bxl-instagram-alt'></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="team-member card-effect">
                        <img src="img/team3.jpg" alt="">
                        <h5 class="mb-0 mt-4">P Jahanavi</h5>
                        <p>Web Developer</p>
                        <div class="social-icons">
                            <a href="#"><i class='bx bxl-facebook'></i></a>
                            <a href="#"><i class='bx bxl-twitter'></i></a>
                            <a href="#"><i class='bx bxl-instagram-alt'></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="team-member card-effect">
                        <img src="https://media.licdn.com/dms/image/D5635AQGTGdjIa1_fQA/profile-framedphoto-shrink_400_400/0/1674971614044?e=1701000000&v=beta&t=svOU_t6nQgj8o5bbitvsiPj51JzDRnsJkWWlEW_Byfo" alt="">
                        <h5 class="mb-0 mt-4">S Pavani</h5>
                        <p>Web Developer</p>
                        <div class="social-icons">
                            <a href="#"><i class='bx bxl-facebook'></i></a>
                            <a href="#"><i class='bx bxl-twitter'></i></a>
                            <a href="#"><i class='bx bxl-instagram-alt'></i></a>
                        </div>
                    </div>
                </div>
                
                 <div class="col-lg-4 col-sm-6">
                    <div class="team-member card-effect">
                        <img src="img/team4.jpg" alt="">
                        <h5 class="mb-0 mt-4">N Gayatri</h5>
                        <p>Web Developer</p>
                        <div class="social-icons">
                            <a href="#"><i class='bx bxl-facebook'></i></a>
                            <a href="#"><i class='bx bxl-twitter'></i></a>
                            <a href="#"><i class='bx bxl-instagram-alt'></i></a>
                        </div>
                    </div>
                </div>
                
                
                
                
            </div>
        </div>
    </section><!-- TEAM -->


<!-- CONTACT -->
<section id="contact">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md-8 mx-auto text-center">
                <h6 class="text-primary">CONTACT</h6>
                <h1>Get In Touch</h1>
                <p>Have questions or suggestions? Contact us, and we'd be happy to assist you.</p>
            </div>
        </div>

        <form action="" class="row g-3 justify-content-center">
            <div class="col-md-5">
                <input type="text" class="form-control" placeholder="Full Name">
            </div>
            <div class="col-md-5">
                <input type="text" class="form-control" placeholder="Enter E-mail">
            </div>
            <div class="col-md-10">
                <input type="text" class="form-control" placeholder="Enter Subject">
            </div>
            <div class="col-md-10">
                <textarea name="" id="" cols="30" rows="5" class="form-control" placeholder="Enter Message"></textarea>
            </div>
            <div class="col-md-10 d-grid">
                <button class="btn btn-primary">Contact</button>
            </div>
        </form>
    </div>
</section><!-- CONTACT -->



    <jsp:include page="user_footer.jsp"></jsp:include>
    
    </body>
    </html>