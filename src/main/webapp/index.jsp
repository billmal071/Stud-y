<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 7/14/2020
  Time: 11:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;300;400;500;600;700&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;300;400;500;600;700&family=Oleo+Script:wght@400;700&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <!-- UIkit CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.5.4/dist/css/uikit.min.css"/>
    <!-- UIkit JS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>STUD-Y</title>
</head>
<body>

<header class="w-100">
    <nav class="d-flex flex-row">
        <img src="assets/img/left%20cloud%20greenish%201.png" alt="left cloud greenish" style="width: 75%">
        <h2 id="logo" class="pl-n5 ml-n5">Stud-y</h2>
    </nav>
</header>

<main>
    <section>
        <div class="d-flex flex-row justify-content-center">
            <div class="container pl-5 ml-5 pt-5 align-items-center">
                <h2 id="text-info" class="mt-5">We are launching an awesome application for students</h2>
                <p id="text-sub">Stud-y is a mobile application that finds your texts books with a single picture</p>
                <button class="btn text-capitalize py-3 px-5" id="see-how-it-works-btn"
                        type="submit">see how it works <img src="assets/img/rightarrow.svg" class="pl-2"
                                                            alt="right-arrow">
                </button>
            </div>
            <img src="assets/img/comingsoon.png" alt="coming soon" srcset="" class="mt-n5 pl-n5">
        </div>
    </section>

    <section class="container px-3 justify-content-center">
        <h3 class="pb-5 mb-5" id="text-direct">How it Works?</h3>
        <div class="d-flex flex-row justify-content-center pt-3">
            <div class="col-4 justify-content-center text-center">
                <div class="">
                    <img src="assets/img/phone.png" class="phone" alt="phone with image"/>
                    <!--<img src="assets/img/yellowcircle.png" class="circle-1" alt="">-->
                </div>
                <div>
                    <h3 class="steps">step 1</h3>
                    <p class="steps-text">Take a picture or screenshot of a portion of the book.</p>
                </div>
            </div>
            <div class="col-4 justify-content-center text-center">
                <div class="">
                    <img src="assets/img/phone.png" class="phone" alt="phone with image"/>
                    <!--<img src="assets/img/greencircle.png" class="circle-2" alt="">-->
                </div>
                <div>
                    <h3 class="steps">step 2</h3>
                    <p class="steps-text">Tap ‘Upload’</p>
                </div>
            </div>
            <div class="col-4 justify-content-center text-center">
                <div>
                    <img src="assets/img/phone.png" class="phone" alt="phone with image"/>
                    <!--<img src="assets/img/bluecircle.png" class="circle-3" alt="">-->
                </div>
                <div>
                    <h3 class="steps">step 3</h3>
                    <p class="steps-text">Voila your book is ready for download</p>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="container">
            <div class="d-flex flex-row justify-content-center">
                <div class="col-6">
                    <h3 class="about-text">About Stud-y</h3>
                    <p class="about-description">Stud-y uses MiraGlance Technologies, an AI-ready computer vision
                        solution, to scan texts and
                        cross-reference them with our vast libraries of books and research papers.</p>
                    <p class="about-description">In partnerships with
                        multiple vendors and journals, Stud-y is also your one-stop shop for academic resources.</p>
                    <div class="d-flex flex-row">
                        <button class="btn">AI-Ready</button>
                        <button class="btn">Bookshop</button>
                    </div>
                </div>
                <div class="col-6">
                    <img src="assets/img/study-phone.png" alt="phone with study">
                </div>
            </div>
        </div>
    </section>

    <section class="bg-yellow">
        <div class="container">
            <div class="d-flex flex-row justify-content-center">
                <div class="justify-content-left col-4">
                    <img src="assets/img/Looking%20through%201.png" alt="guy looking through binoculars">
                </div>
                <div class="col-8">
                    <p class="text-white" id="text-contact">Be the first to know</p>
                    <form method="post" action="RegisterServlet" class="d-flex flex-row align-content-center"
                          name="myForm">
                        <input type="text" name="email"
                               pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
                               placeholder="Email" class="form-control form-control-lg w-75 border-0 bg-white mr-2"
                               required>
                        <input type="submit" value="Subscribe" class="btn text-white py-3 px-5" id="subscribe-btn">
                    </form>
                    <p class="card bg-danger text-white py-3 d-none" id="fail">Please fill email appropriately</p>
                    <p class="card bg-success text-white py-3 d-none" id="success">Subscription successful</p>
                </div>
            </div>
        </div>
    </section>
</main>

<footer>

</footer>

<script src="assets/js/app.js"></script>
<script src="https://cdn.jsdelivr.net/npm/uikit@3.5.4/dist/js/uikit.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/uikit@3.5.4/dist/js/uikit-icons.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>
</html>
