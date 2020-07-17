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
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;300;400;500;600;700&family=Oleo+Script:wght@400;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <!-- UIkit CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.5.4/dist/css/uikit.min.css" />
    <!-- UIkit JS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>STUD-Y</title>
</head>

<body>

    <header class="w-100">
        <nav class="d-flex flex-row">
            <img src="assets/img/left%20cloud%20greenish%201.png" alt="left cloud greenish" style="width: 75%"
                class="img-fluid">
            <h2 id="logo" class="pl-n5 ml-n5">Stud-y</h2>
        </nav>
    </header>

    <main>
        <!-- coming soon -->
        <section class="container">
            <div class="d-flex flex-md-row flex-column justify-content-center">
                <div class="container ml-md-n5 pt-5 align-items-center text-small-screen" id="mp-lt"
                    uk-scrollspy="cls: uk-animation-slide-right; repeat: false">
                    <h2 id="text-info" class="mt-5 pr-md-5">We are launching an awesome application for students</h2>
                    <p id="text-sub">Stud-y is a mobile application that finds your texts books with a single picture!
                    </p>
                    <button class="btn text-capitalize py-3 px-5" id="see-how-it-works-btn" type="submit">see how it
                        works <img src="assets/img/rightarrow.svg" class="pl-2" alt="right-arrow">
                    </button>
                </div>
                <div uk-scrollspy="cls: uk-animation-slide-left; repeat: false" class="img-small-screen">
                    <img src="assets/img/coming-soon.png" alt="coming soon" srcset="" class="img-fluid">
                </div>
            </div>
        </section>

        <!-- How it works -->
        <section class="container px-3 justify-content-center" id="my-6">
            <h3 class="" id="text-direct">How it Works?</h3>
            <div class="d-flex flex-md-row flex-column justify-content-center pt-3"
                uk-scrollspy="cls: uk-animation-slide-bottom; target: >div; delay: 300; repeat: false">
                <div class="col-md-4 justify-content-center text-center">
                    <div class="mt-3">
                        <img src="assets/img/step-1.png" alt="">
                    </div>
                    <div>
                        <h3 class="steps">step 1</h3>
                        <p class="steps-text">Take a picture or screenshot of a portion of the book.</p>
                    </div>
                </div>
                <div class="col-md-4 justify-content-center text-center" uk-scrollspy-class="uk-animation-slide-top">
                    <div class="mt-3">
                        <img src="assets/img/step-2.png" alt="">
                    </div>
                    <div>
                        <h3 class="steps">step 2</h3>
                        <p class="steps-text">Tap ‘Upload’</p>
                    </div>
                </div>
                <div class="col-md-4 justify-content-center text-center">
                    <div class="mt-3">
                        <img src="assets/img/step-3.png" alt="">
                    </div>
                    <div>
                        <h3 class="steps">step 3</h3>
                        <p class="steps-text">Voila your book is ready for download</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- about stud-y -->
        <section id="my-7">
            <div class="container">
                <div class="d-flex flex-md-row flex-column justify-content-center row text-small-screen"
                    uk-scrollspy="cls: uk-animation-slide-right; repeat: false">
                    <div class="col-md-6 justify-items-center align-self-center">
                        <h3 class="about-text">About Stud-y</h3>
                        <p class="about-description">Stud-y uses MiraGlance Technologies, an AI-ready computer vision
                            solution, to scan texts and
                            cross-reference them with our vast libraries of books and research papers.</p>
                        <p class="about-description">In partnerships with
                            multiple vendors and journals, Stud-y is also your one-stop shop for academic resources.</p>
                        <div class="d-flex flex-row mt-5" id="center-btn">
                            <button class="btn mr-2" id="btn-ai">AI-Ready</button>
                            <button class="btn" id="btn-bkshop">Bookshop</button>
                        </div>
                    </div>
                    <div class="col-md-6 mt-md-0 mt-5 img-small-screen"
                        uk-scrollspy="cls: uk-animation-slide-left; repeat: false">
                        <img src="assets/img/study-phone.png" alt="phone with study">
                    </div>
                </div>
            </div>
        </section>


        <!-- How It Looks -->
        <section class="container px-3 justify-content-center" id="mb-6"
            uk-scrollspy="cls: uk-animation-fade; target: >div; delay: 500; repeat: true">
            <h3 id="text-looks">How it looks</h3>
            <div class="image-grid-box" uk-lightbox="animation: slide">
                <div>
                    <a class="uk-inline" href="assets/img/design-1.png" >
                        <img src="assets/img/design-1.png" alt="design for product, image 1">
                    </a>
                </div>
                <div>
                    <a class="uk-inline" href="assets/img/design-2.png">
                        <img src="assets/img/design-2.png" alt="">
                    </a>
                </div>
                <div>
                    <a class="uk-inline" href="assets/img/design-3.png">
                        <img src="assets/img/design-3.png" alt="">
                    </a>
                </div>
                <div>
                    <a class="uk-inline" href="assets/img/design-4.png">
                        <img src="assets/img/design-4.png" alt="">
                    </a>
                </div>
                <div>
                    <a class="uk-inline" href="assets/img/design-5.png">
                        <img src="assets/img/design-5.png" alt="">
                    </a>
                </div>
                <div>
                    <a class="uk-inline" href="assets/img/design-6.png">
                        <img src="assets/img/design-6.png" alt="">
                    </a>
                </div>
            </div>
        </section>


        <!-- contact -->
        <section class="bg-yellow">
            <div class="container pt-4">
                <div class="d-flex flex-md-row flex-column justify-content-center">
                    <div class="justify-content-left col-md-4 ml-md-n5 mr-md-5" id="alc"
                        uk-scrollspy="cls: uk-animation-slide-right; repeat: false">
                        <img src="assets/img/Looking%20through%201.png" alt="guy looking through binoculars"
                            id="pos-img">
                    </div>
                    <div class="col-md-8 d-flex flex-column align-self-center ml-md-5"
                        uk-scrollspy="cls: uk-animation-slide-left; repeat: false">
                        <p class="text-white text-left" id="text-contact">Be the first to know</p>
                        <form method="post" action="RegisterServlet" name="myForm"
                            class="d-flex flex-md-row flex-column">
                            <input type="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
                                placeholder="Email" class="bg-white py-3 pl-3 mr-2" required>
                            <input type="submit" value="Subscribe" class="btn text-white py-2 px-md-5"
                                id="subscribe-btn">
                        </form>
                        <p class="card bg-danger text-white py-3" id="fail">Please fill email appropriately
                            <button type="button" class="close" id="close-f">&times;</button>
                        </p>
                        <p class="card bg-success text-white py-3" id="success">Subscription successful
                            <button type="button" class="close" id="close-s">&times;</button>
                        </p>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer class="card" id="footer-dark">
        <div class="align-self-center">
            <p class="text-white text-center pt-4" id="footer-text">2020 ©
                Stud-y. All rights reserved.</p>
        </div>
    </footer>

    <script src="assets/js/app.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.5.4/dist/js/uikit.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.5.4/dist/js/uikit-icons.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</body>

</html>