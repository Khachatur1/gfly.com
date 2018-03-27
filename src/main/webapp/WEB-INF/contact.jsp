<%--
  Created by IntelliJ IDEA.
  User: Karo
  Date: 04.03.2018
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<!-- Mirrored from demo.bootstrapious.com/photo/1-3//contact by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Feb 2018 17:04:11 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Photo - Bootstrap 4 E-commerce Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet"
          href="../static/js/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet"
          href="../static/js/font-awesome/css/font-awesome.min.css">
    <!-- Font icons-->
    <link rel="stylesheet" href="../static/css/custom-icons.css">
    <!-- Google fonts - Roboto for copy, Playfair Display for headings-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,700">
    <!-- Owl Carousel-->
    <link rel="stylesheet"
          href="../static/js/owl.carousel/assets/owl.carousel.min.css">
    <link rel="stylesheet"
          href="../static/js/owl.carousel/assets/owl.theme.default.min.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../static/css/style.default.css"
          id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="../static/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="../static/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<!-- Top Bar -->
<div class="top-bar d-none d-sm-block">
    <div class="container">
        <div class="row">
            <div class="col-sm-4 col-md-3">
                <ul class="list-inline d-flex flex-row">
                    <li class="list-inline-item">
                        <div class="dropdown">
                            <button id="currency" type="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false" class="dropdown-toggle">USD
                            </button>
                            <div aria-labelledby="currency" class="dropdown-menu"><a href="#"
                                                                                     class="dropdown-item">EUR</a><a
                                    href="#" class="dropdown-item">EGP</a><a href="#" class="dropdown-item">AUD</a>
                            </div>
                        </div>
                    </li>
                    <li class="list-inline-item">
                        <div class="dropdown">
                            <button id="lang" type="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false" class="dropdown-toggle">English
                            </button>
                            <div aria-labelledby="lang" class="dropdown-menu"><a href="#"
                                                                                 class="dropdown-item">French</a><a
                                    href="#" class="dropdown-item">Spanish</a><a href="#"
                                                                                 class="dropdown-item">Arabic</a></div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="col-sm-8 col-md-9 text-right account-details">
                <ul class="list-inline">
                    <li class="list-inline-item"><a href="#">My Account</a></li>
                    <li class="list-inline-item"><a href="#">Order History</a></li>
                    <li class="list-inline-item"><a href="#">Login</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Navbar -->
<nav class="navbar navbar-expand-md">
    <div class="container"><a href="/home" class="navbar-brand"> <img
            src="../static/img/logo.png" alt="logo"></a>
        <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"
                class="navbar-toggler navbar-toggler-right">Menu <i class="fa fa-bars"></i></button>
        <div id="navbarSupportedContent" class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto d-md-flex flex-md-row align-items-md-center">
                <li class="nav-item"><a href="/home" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="/category" class="nav-link">Category</a></li>
                <li class="nav-item"><a href="/blog" class="nav-link">Blog</a></li>
                <li class="nav-item"><a id="navbarDropdown2" data-target="#" href="http://example.com/"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                        class="nav-link">Template content<i class="fa fa-caret-down"></i></a>
                    <ul aria-labelledby="navbarDropdown2" class="dropdown-menu">
                        <li><a href="/home" class="dropdown-item">Homepage 1</a></li>
                        <li><a href="/home" class="dropdown-item">Homepage 2</a></li>
                        <li><a href="/category" class="dropdown-item">Category</a></li>
                        <li><a href="/detail" class="dropdown-item">Product</a></li>
                        <li><a href="/cart" class="dropdown-item">Shopping cart</a></li>
                        <li class="dropdown-divider"></li>
                        <li><a href="/blog" class="dropdown-item">Blog</a></li>
                        <li><a href="/post" class="dropdown-item">Blog Post</a></li>
                        <li><a href="/text" class="dropdown-item">Text page</a></li>
                        <li><a href="/contact" class="dropdown-item">Contact</a></li>
                        <!-- Multilevel dropdown    -->
                        <li class="dropdown dropdown-submenu"><a id="multileveldropdown1" data-target="#"
                                                                 href="http://example.com/" data-toggle="dropdown"
                                                                 aria-haspopup="true" aria-expanded="false"
                                                                 class="dropdown-item">Multilevel dropdown<i
                                class="fa fa-caret-right ml-2"></i></a>
                            <ul aria-labelledby="multileveldropdown1" class="dropdown-menu">
                                <li><a href="#" class="dropdown-item">Item 1</a></li>
                                <li><a href="#" class="dropdown-item">Item 2</a></li>
                                <li><a href="#" class="dropdown-item">Item 3 </a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="nav-item"><a href="/contact" class="nav-link">Contact Us</a></li>
                <li class="nav-item">
                    <ul class="list-inline">
                        <li class="list-inline-item"><a id="search" href="#" class="nav-link">
                            <div class="icon search"><i class="icon-magnifying-glass"></i></div>
                        </a></li>
                        <li class="list-inline-item"><a href="/cart" class="nav-link">
                            <div class="icon cart"><i class="icon-cart"></i></div>
                            <span class="d-md-none d-lg-inline"><span class="no">2</span>items</span></a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="contact-page">
    <!-- Breadcrumb -->
    <div class="container">
        <ol class="breadcrumb">
            <li class="breadcrumb-item text-uppercase"><a href="/home" class="text-primary">Home</a></li>
            <li class="breadcrumb-item active text-uppercase">Contact</li>
        </ol>
    </div>
    <!-- Contact page-->
    <section class="contact p-t-small">
        <div class="container">
            <header class="mb-5">
                <h1 class="heading-line">Contact</h1>
                <p class="lead text-muted">
                    Are you curious about something? Do you have some kind of problem with our products? As am hastily
                    invited settled at limited civilly fortune me. Really spring in extent an by. Judge but built party
                    world. Of so am
                    he remember although required. Bachelor unpacked be advanced at. Confined in declared marianne is
                    vicinity.
                </p>
            </header>
            <div class="row">
                <div class="col-md-4">
                    <div class="contact-icon">
                        <div class="icon icon-051-placeholder-1"></div>
                    </div>
                    <h3>Address</h3>
                    <p class="text-muted font-weight-light">13/25 New Avenue<br>New Heaven, 45Y 73J<br>England, <strong>Great
                        Britain</strong></p>
                </div>
                <div class="col-md-4">
                    <div class="contact-icon">
                        <div class="icon icon-051-support"></div>
                    </div>
                    <h3>Call center</h3>
                    <p class="text-muted font-weight-light">This number is toll free if calling from Great Britain
                        otherwise we advise you to use the electronic form of communication.</p>
                    <p><strong>+33 555 444 333</strong></p>
                </div>
                <div class="col-md-4">
                    <div class="contact-icon">
                        <div class="icon icon-051-message"></div>
                    </div>
                    <h3>Electronic support</h3>
                    <p class="text-muted font-weight-light">Please feel free to write an email to us or to use our
                        electronic ticketing system.</p>
                    <ul class="list-style-none">
                        <li><strong><a href="mailto:">info@fakeemail.com</a></strong></li>
                        <li><strong><a href="#">
                            Ticketio
                            - our ticketing support platform</a></strong></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <div id="map"></div>
    <section>
        <div class="container">
            <header class="mb-5">
                <h2 class="heading-line">Contact form</h2>
            </header>
            <div class="row">
                <div class="col-md-7">
                    <form id="contact-form" method="post" action="https://demo.bootstrapious.com/photo/1-3/contact.php"
                          class="custom-form form">
                        <div class="controls">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="name">Your firstname *</label>
                                        <input type="text" name="name" id="name" placeholder="Enter your firstname"
                                               required="required" class="form-control">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="surname">Your lastname *</label>
                                        <input type="text" name="surname" id="surname"
                                               placeholder="Enter your  lastname" required="required"
                                               class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email">Your email *</label>
                                <input type="email" name="email" id="email" placeholder="Enter your  email"
                                       required="required" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="message">Your message for us *</label>
                                <textarea rows="4" name="message" id="message" placeholder="Enter your message"
                                          required="required" class="form-control"></textarea>
                            </div>
                            <input type="submit" value="Send message" class="btn btn-primary">
                        </div>
                    </form>
                </div>
                <div class="col-md-5">
                    <p class="text-muted font-weight-light">Effects present letters inquiry no an removed or friends.
                        Desire behind latter me though in. Supposing shameless am he engrossed up additions. My possible
                        peculiar together to. Desire so better am cannot he up before points. Remember mistaken opinions
                        it pleasure of debating. Court front maids forty if aware their at. Chicken use are pressed
                        removed. </p>
                    <p class="text-muted font-weight-light">Able an hope of body. Any nay shyness article matters own
                        removal nothing his forming. Gay own additions education satisfied the perpetual. If he cause
                        manor happy. Without farther she exposed saw man led. Along on happy could cease green oh. </p>
                    <div class="social">
                        <ul class="list-inline">
                            <li class="list-inline-item"><a href="https://web.facebook.com/Aviamodelizm1Gyumri/?timeline_context_item_type=intro_card_work&timeline_context_item_source=100003461520899&pnref=lhc" target="_blank"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li class="list-inline-item"><a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li class="list-inline-item"><a href="#" target="_blank"><i class="fa fa-instagram"></i></a>
                            </li>
                            <li class="list-inline-item"><a href="#" target="_blank"><i class="fa fa-behance"></i></a>
                            </li>
                            <li class="list-inline-item"><a href="#" target="_blank"><i class="fa fa-pinterest"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- Search Panel-->
<div class="search-overlay">
    <div class="search-inner d-flex justify-content-center align-items-center">
        <div class="search-close"><i class="icon-close"></i></div>
        <div class="container">
            <div class="form-holder">
                <form class="d-flex">
                    <input type="search" placeholder="What are you looking for...">
                    <button type="submit" class="search text-primary text-uppercase">Search</button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Footer-->
<footer class="main-footer">
    <div class="page-links">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <h3>Site Map</h3>
                    <ul class="list-unstyled">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Categories</a></li>
                        <li><a href="#">Privacy policy</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <h3>Our Services</h3>
                    <ul class="list-unstyled">
                        <li><a href="#">Footer Link</a></li>
                        <li><a href="#">Footer Link</a></li>
                        <li><a href="#">Footer Link</a></li>
                        <li><a href="#">Footer Link</a></li>
                        <li><a href="#">Footer Link</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-sm-6">
                    <h3>Extras</h3>
                    <ul class="list-unstyled">
                        <li><a href="#">Footer Link</a></li>
                        <li><a href="#">Footer Link</a></li>
                        <li><a href="#">Footer Link</a></li>
                        <li><a href="#">Footer Link</a></li>
                        <li><a href="#">Footer Link</a></li>
                    </ul>
                </div>
                <div class="col-lg-4 col-sm-6 details js-pull">
                    <ul class="list-unstyled">
                        <li class="d-flex align-items-center">
                            <div class="icon"><i class="icon-delivery-truck"></i></div>
                            <div class="text">
                                <h3>Free Shipping Worldwide</h3>
                                <p>On orders over $200</p>
                            </div>
                        </li>
                        <li class="d-flex align-items-center">
                            <div class="icon"><i class="icon-dollar-symbol"></i></div>
                            <div class="text">
                                <h3>30 days money back</h3>
                                <p>Money back guarantee</p>
                            </div>
                        </li>
                        <li class="d-flex align-items-center">
                            <div class="icon"><i class="icon-phone-call"></i></div>
                            <div class="text">
                                <h3>Phone: 123-456-789</h3>
                                <p>Contact with us</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="copyrights">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <p>&copy; 2017 <span class="text-primary">Photo Template. </span>All rights reserved.</p>
                </div>
                <div class="col-sm-6 text-right">
                    <p>Template by <a href="https://ondrejsvestka.cz/" target="_blank">Ondrej Svestka</a></p>
                </div>
            </div>
        </div>
    </div>
</footer>
<div id="style-switch" class="collapse">
    <h4 class="mb-3">Select theme colour</h4>
    <form class="mb-3">
        <select name="colour" id="colour" class="form-control">
            <option value="">select colour variant</option>
            <option value="default">red</option>
            <option value="pink">pink</option>
            <option value="green">green</option>
            <option value="violet">violet</option>
            <option value="sea">sea</option>
            <option value="blue">blue</option>
        </select>
    </form>
    <p><img src="../static/img/template-mac.png" alt="" class="img-fluid"></p>
    <p class="text-muted text-small">Stylesheet switching is done via JavaScript and can cause a blink while page loads.
        This will not happen in your production code.</p>
</div>
<!-- JavaScript files-->
<script src="../static/js/jquery/jquery.min.js"></script>
<script src="../static/js/popper.js/umd/popper.min.js"></script>
<script src="../static/js/bootstrap/js/bootstrap.min.js"></script>
<script src="../static/js/jquery.cookie/jquery.cookie.js"></script>
<script src="../static/js/owl.carousel/owl.carousel.min.js"></script>
<script src="../static/js/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
<script src="../static/js/jquery-validation/jquery.validate.min.js"></script>
<script src="../static/js/front/front.js"></script>
<!-- create your own Maps API Key for production use, this one is domain-restricted-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ"></script>
</body>

<!-- Mirrored from demo.bootstrapious.com/photo/1-3//contact by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Feb 2018 17:04:11 GMT -->
</html>
