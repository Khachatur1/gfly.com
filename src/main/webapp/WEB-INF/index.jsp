<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Photo - Bootstrap 4 E-commerce Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <link rel="stylesheet"
          href="../static/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="../static/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../static/css/custom-icons.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,700">
    <link rel="stylesheet"
          href="../static/vendor/owl.carousel/assets/owl.carousel.min.css">
    <link rel="stylesheet"
          href="../static/vendor/owl.carousel/assets/owl.theme.default.min.css">
    <link rel="stylesheet" href="../static/css/style.default.css"
          id="theme-stylesheet">
    <link rel="stylesheet" href="../static/css/custom.css">
    <link rel="shortcut icon" href="../static/favicon.png">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
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
                <li class="nav-item active"><a id="navbarDropdown1" data-target="#" href="/home"
                                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                               class="nav-link">Home<i class="fa fa-caret-down"></i></a>
                    <ul aria-labelledby="navbarDropdown1" class="dropdown-menu">
                        <li><a href="/home" class="dropdown-item">Homepage 1</a></li>
                        <li><a href="/home" class="dropdown-item">Homepage 2</a></li>
                    </ul>
                </li>
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
<div class="home-page">
    <!-- Hero Section-->
    <section class="hero d-flex flex-row align-items-center">
        <div class="container">
            <div data-slider-id="1" class="owl-carousel hero-1-slider">
                <!-- Slide-->
                <div class="item">
                    <div class="row d-flex flex-row align-items-center">
                        <div class="col-md-6 text">
                            <h1>Bootstrap&nbsp;4<br>Ecommerce Template</h1>
                            <p><strong>9 HTML</strong> pages, <strong>SCSS</strong> source files, <strong>7 colour
                                variants</strong></p>
                            <hr>
                            <ul class="list-unstyled props">
                                <li><i class="icon-checked"></i>Regular updates</li>
                                <li><i class="icon-checked"></i>Well-structured & SEO-friendly code</li>
                                <li><i class="icon-checked"></i>SCSS files for full customization</li>
                            </ul>
                        </div>
                        <div class="col-md-6 product"><img
                                src="../static/img/hero-3.png" alt="lens"
                                class="img-fluid d-none d-md-block"></div>
                    </div>
                </div>
                <!-- Slide END-->
                <!-- Slide-->
                <div class="item">
                    <div class="row d-flex flex-row align-items-center">
                        <div class="col-md-6 text">
                            <h5>Professional Edition</h5>
                            <h1>Premium Quality</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                incididunt</p>
                            <hr>
                            <ul class="list-unstyled props">
                                <li><i class="icon-checked"></i>Lorem ipsum dolor sit amet</li>
                                <li><i class="icon-checked"></i>Lorem ipsum dolor sit amet</li>
                            </ul>
                            <ul class="price list-inline">
                                <li class="list-inline-item">
                                    <p class="price">Best Price: 350$</p>
                                </li>
                                <li class="list-inline-item">
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a href="#" class="btn btn-white">Add To Cart</a>
                                        </li>
                                        <li class="list-inline-item"><a href="#" class="btn btn-dark">Learn More</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-6 product"><img
                                src="../static/img/hero-2.png" alt="lens"
                                class="img-fluid d-none d-md-block"></div>
                    </div>
                </div>
                <!-- Slide END-->
                <!-- Slide-->
                <div class="item">
                    <div class="row d-flex flex-row align-items-center">
                        <div class="col-md-6 text">
                            <h5>Professional Edition</h5>
                            <h1>Premium Quality</h1>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                incididunt</p>
                            <hr>
                            <ul class="list-unstyled props">
                                <li><i class="icon-checked"></i>Lorem ipsum dolor sit amet</li>
                                <li><i class="icon-checked"></i>Lorem ipsum dolor sit amet</li>
                            </ul>
                            <ul class="price list-inline">
                                <li class="list-inline-item">
                                    <p class="price">Best Price: 350$</p>
                                </li>
                                <li class="list-inline-item">
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a href="#" class="btn btn-white">Add To Cart</a>
                                        </li>
                                        <li class="list-inline-item"><a href="#" class="btn btn-dark">Learn More</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-6 product"><img
                                src="../static/img/hero-1.png" alt="lens"
                                class="img-fluid d-none d-md-block"></div>
                    </div>
                </div>
                <!-- Slide END                                -->

            </div>
        </div>
    </section>
    <!-- Categories Section-->
    <section class="categories">
        <div class="container">
            <div class="categories-inner">
                <header>
                    <h2 class="h5 heading-line d-none d-md-block">Categories</h2>
                </header>
                <div class="row text-center">
                    <c:forEach items="${categories}" var="category">

                        <div class="col-md-4 item"><a href="/category">
                            <h4>${category.name.toUpperCase()}</h4>
                            <p>Lorem ipsum dolor sit amet</p>
                            <div class="image"><img src="../static/img/cat-cam.jpg"
                                                    alt="camera" class="img-fluid"></div>
                        </a></div>
                    </c:forEach>





    </div>

            </div>
        </div>
    </section>
    <!-- Cameras Section-->
    <section class="product-1">
        <div class="container">
            <header>
                <h2 class="h3 heading-line">Cameras Collection</h2>
            </header>
            <div class="row d-flex flex-row align-items-stretch">
                <div class="col-lg-6">
                    <div class="item item-big text-right">
                        <h2>

                            Digital <br>Cameras
                        </h2><a href="/category" class="btn btn-unique btn-lg">Shop Now</a><img
                            src="../static/img/camera-big.jpg" alt="camera"
                            class="img-fluid">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="item">
                                <h4>EOS Digital SLR</h4>
                                <p class="text-primary">$1.299</p><img
                                    src="../static/img/camera-1.jpg" alt="camera"
                                    class="img-fluid">
                                <div class="overlay d-flex align-items-center justify-content-center"><a
                                        href="/detail" class="btn btn-unique">View Details</a></div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="item">
                                <h4>EOS Digital SLR</h4>
                                <p class="text-primary">$1.299</p><img
                                    src="../static/img/cat-cam.jpg" alt="camera"
                                    class="img-fluid">
                                <div class="overlay d-flex align-items-center justify-content-center"><a
                                        href="/detail" class="btn btn-unique">View Details</a></div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="item">
                                <h4>EOS Digital SLR</h4>
                                <p class="text-primary">$1.299</p><img
                                    src="../static/img/camera-3.jpg" alt="camera"
                                    class="img-fluid">
                                <div class="overlay outStock d-flex align-items-center justify-content-center"><strong
                                        class="text-primary">Sold Out</strong></div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="item">
                                <h4>EOS Digital SLR</h4>
                                <p class="text-primary">$1.299</p><img
                                    src="../static/img/camera-2.jpg" alt="camera"
                                    class="img-fluid">
                                <div class="overlay d-flex align-items-center justify-content-center"><a
                                        href="/detail" class="btn btn-unique">View Details</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Sale Section-->
    <section class="sale">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>Discover 2017 Sales</h2>
                    <p>lorem ipsum dolor sit amet consectetur adipiscing elit, ed do eiusmod tempor incididunt</p><a
                        href="#" class="btn btn-dark shop-now">Shop Now</a>
                </div>
                <div class="col-md-6 d-none d-md-block">
                    <div class="product"><img src="../static/img/nikon-cam.png"
                                              alt="camera" class="img-fluid"></div>
                </div>
            </div>
        </div>
    </section>
    <!-- Lenses Section-->
    <section class="product-2">
        <div class="container">
            <header>
                <h2 class="h3 heading-line">Lenses Collection</h2>
            </header>
            <div class="row">
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="item">
                                <h4>Canon EOS C300</h4>
                                <p class="text-primary">$1.299</p><img
                                    src="../static/img/lens-1.jpg" alt="lens"
                                    class="img-fluid">
                                <div class="overlay d-flex align-items-center justify-content-center"><a
                                        href="/detail" class="btn btn-unique">View Details</a></div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="item">
                                <h4>Canon EOS C300</h4>
                                <p class="text-primary">$1.299</p><img
                                    src="../static/img/lens-2.jpg" alt="lens"
                                    class="img-fluid">
                                <div class="overlay d-flex align-items-center justify-content-center"><a
                                        href="/detail" class="btn btn-unique">View Details</a></div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="item">
                                <h4>Canon EOS C300</h4>
                                <p class="text-primary">$1.299</p><img
                                    src="../static/img/lens-3.jpg" alt="lens"
                                    class="img-fluid">
                                <div class="overlay d-flex align-items-center justify-content-center"><a
                                        href="/detail" class="btn btn-unique">View Details</a></div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="item">
                                <h4>Canon EOS C300</h4>
                                <p class="text-primary">$1.299</p><img
                                    src="../static/img/lens-4.jpg" alt="lens"
                                    class="img-fluid">
                                <div class="overlay d-flex align-items-center justify-content-center"><a
                                        href="/detail" class="btn btn-unique">View Details</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 js-pull">
                    <div class="item item-big">
                        <h2>

                            Zoom <br>Lenses
                        </h2><a href="/category" class="btn btn-unique btn-lg">Shop Now</a><img
                            src="../static/img/lens-big.jpg" alt="lens"
                            class="img-fluid">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Divider Section-->
    <section class="divider">
        <div class="container text-center">
            <p class="h5">New Arrival Collections</p>
            <h2>For your perfect photos</h2>
            <hr>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p><a
                href="#" class="btn btn-white">Learn More</a>
        </div>
    </section>
    <!-- Newsletter Section-->
    <section class="newsletter">
        <div class="container">
            <div class="row">
                <div class="ml-auto mr-auto col-lg-8 text-center">
                    <div class="form">
                        <p class="h5"><span class="text-primary">Special offers </span>for subscribers</p>
                        <h2>New Offers Every Week <span class="text-primary">& </span><br>Discount System <span
                                class="text-primary">&  </span>Best hot prices</h2>
                        <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis, error explicabo commodi
                            dolor ex perferendis.</p>
                        <form>
                            <input id="email" type="email" name="email" placeholder="Enter your email address">
                            <input type="submit" value="Subscribe" class="btn btn-unique">
                        </form>
                    </div>
                    <div class="social">
                        <h2>We are social</h2>
                        <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores laborum nesciunt
                            cu.</p>
                        <ul class="list-inline">
                            <li class="list-inline-item"><a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
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
<script src="../static/vendor/jquery/jquery.min.js"></script>
<script src="../static/vendor/popper.js/umd/popper.min.js"></script>
<script src="../static/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../static/vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="../static/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="../static/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
<script src="../static/vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="../static/js/front.js"></script>
</body>

<!-- Mirrored from demo.bootstrapious.com/photo/1-3/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Feb 2018 17:04:04 GMT -->
</html>
