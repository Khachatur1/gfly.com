<%--
  Created by IntelliJ IDEA.
  User: Karo
  Date: 04.03.2018
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<!-- Mirrored from demo.bootstrapious.com/photo/1-3//detail by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Feb 2018 17:04:08 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Photo - Bootstrap 4 E-commerce Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="../static/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="../static/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Font icons-->
    <link rel="stylesheet" href="../static/css/custom-icons.css">
    <!-- Google fonts - Roboto for copy, Playfair Display for headings-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,700">
    <!-- Owl Carousel-->
    <link rel="stylesheet" href="../static/vendor/owl.carousel/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="../static/vendor/owl.carousel/assets/owl.theme.default.min.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../static/css/style.default.css" id="theme-stylesheet">
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
                            <button id="currency" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle">USD</button>
                            <div aria-labelledby="currency" class="dropdown-menu"><a href="#" class="dropdown-item">EUR</a><a href="#" class="dropdown-item">EGP</a><a href="#" class="dropdown-item">AUD</a></div>
                        </div>
                    </li>
                    <li class="list-inline-item">
                        <div class="dropdown">
                            <button id="lang" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle">English</button>
                            <div aria-labelledby="lang" class="dropdown-menu"><a href="#" class="dropdown-item">French</a><a href="#" class="dropdown-item">Spanish</a><a href="#" class="dropdown-item">Arabic</a></div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="col-sm-8 col-md-9 text-right account-details">
                <ul class="list-inline">
                    <li class="list-inline-item"> <a href="#">My Account</a></li>
                    <li class="list-inline-item"><a href="#">Order History</a></li>
                    <li class="list-inline-item"><a href="#">Login</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Navbar -->
<nav class="navbar navbar-expand-md">
    <div class="container"><a href="/home" class="navbar-brand"> <img src="../static/img/logo.png" alt="logo"></a>
        <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler navbar-toggler-right">Menu <i class="fa fa-bars"></i></button>
        <div id="navbarSupportedContent" class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto d-md-flex flex-md-row align-items-md-center">
                <li class="nav-item active"><a id="navbarDropdown1" data-target="#" href="/home" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link">Home<i class="fa fa-caret-down"></i></a>
                    <ul aria-labelledby="navbarDropdown1" class="dropdown-menu">
                        <li><a href="/home" class="dropdown-item">Homepage 1</a></li>
                        <li><a href="/home" class="dropdown-item">Homepage 2</a></li>
                    </ul>
                </li>
                <li class="nav-item"><a href="/category" class="nav-link">Category</a></li>
                <li class="nav-item"><a href="/blog" class="nav-link">Blog</a></li>
                <li class="nav-item"><a id="navbarDropdown2" data-target="#" href="http://example.com/" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link">Template content<i class="fa fa-caret-down"></i></a>
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
                        <li class="dropdown dropdown-submenu"><a id="multileveldropdown1" data-target="#" href="http://example.com/" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-item">Multilevel dropdown<i class="fa fa-caret-right ml-2"></i></a>
                            <ul aria-labelledby="multileveldropdown1" class="dropdown-menu">
                                <li><a href="#" class="dropdown-item">Item 1</a></li>
                                <li><a href="#" class="dropdown-item">Item 2</a></li>
                                <li><a href="#" class="dropdown-item">Item 3         </a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="nav-item"><a href="/contact" class="nav-link">Contact Us</a></li>
                <li class="nav-item">
                    <ul class="list-inline">
                        <li class="list-inline-item"><a id="search" href="#" class="nav-link">
                            <div class="icon search"><i class="icon-magnifying-glass"></i></div></a></li>
                        <li class="list-inline-item"><a href="/cart" class="nav-link">
                            <div class="icon cart"><i class="icon-cart"></i></div><span class="d-md-none d-lg-inline"><span class="no">2</span>items</span></a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="details-page">
    <!-- Breadcrumb -->
    <div class="container">
        <ol class="breadcrumb">
            <li class="breadcrumb-item text-uppercase"> <a href="/home" class="text-primary">Home</a></li>
            <li class="breadcrumb-item text-uppercase"> <a href="/category" class="text-primary">Lenses</a></li>
            <li class="breadcrumb-item active text-uppercase">Fast telephoto zoom lense</li>
        </ol>
    </div>
    <!-- Item details -->
    <section class="item-details p-t-small p-b-small">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div data-slider-id="1" class="owl-carousel item-slider">
                        <div class="item"> <img src="../static/img/detail-2.jpg" alt="lens"></div>
                        <div class="item"> <img src="../static/img/detail-1.jpg" alt="lens"></div>
                        <div class="item"> <img src="../static/img/detail-3.jpg" alt="lens"></div>
                        <div class="item"> <img src="../static/img/detail-4.jpg" alt="lens"></div>
                    </div>
                    <div data-slider-id="1" class="owl-thumbs">
                        <button class="owl-thumb-item"><img src="../static/img/detail-2-small.jpg" alt="lens"></button>
                        <button class="owl-thumb-item"><img src="../static/img/detail-1-small.jpg" alt="lens"></button>
                        <button class="owl-thumb-item"><img src="../static/img/detail-3-small.jpg" alt="lens"></button>
                        <button class="owl-thumb-item"><img src="../static/img/detail-4-small.jpg" alt="lens"></button>
                    </div>
                    <div class="brief">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore eligendi, hic illo, debitis similique maxime molestias voluptates sunt. Natus asperiores, unde dolorem nemo reprehenderit totam consequatur eos. Ipsa, voluptatibus, laborum.</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore eligendi, hic illo, debitis similique maxime molestias voluptates sunt. Natus asperiores, unde dolorem nemo reprehenderit totam consequatur eos. Ipsa, voluptatibus, laborum.</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <h1 class="h2">Fast Telephoto Zoom Lens Nano Crystal</h1>
                    <div class="price d-flex justify-content-between align-items-center text-primary">$599.00
                        <div class="d-flex justify-content-center">
                            <ul class="rate list-inline">
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                            </ul><span>No Reviews</span>
                        </div>
                    </div>
                    <div class="model">
                        <ul class="list-unstyled">
                            <li><span class="text-uppercase">Item No: </span>AF-S NiKKOR 70-200mm f/2.8G ED</li>
                            <li><span class="text-uppercase">Category: </span>Zoom Lenses</li>
                            <li><span class="text-uppercase">Availability: </span>In Stock</li>
                        </ul>
                    </div>
                    <div class="description">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    </div>
                    <form action="#" method="get">
                        <div class="row d-flex justify-content-between">
                            <div class="col-lg-6">
                                <ul class="product-quantity list-inline">
                                    <li class="list-inline-item">
                                        <h3 class="h5">Quantity</h3>
                                    </li>
                                    <li class="list-inline-item">
                                        <div class="counter d-flex align-items-center justify-content-start">
                                            <div class="minus-btn"><i class="icon-android-remove"></i></div>
                                            <input type="text" value="1" class="quantity">
                                            <div class="plus-btn"><i class="icon-android-add"></i></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-6">
                                <select name="variant" title="variant" class="country form-control">
                                    <option value="">D750 body only</option>
                                    <option value="">24-120mm VR Lens Kit</option>
                                </select>
                            </div>
                        </div>
                        <div class="CTAs">
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <button href="#" class="btn btn-unique">Add To Cart</button>
                                </li>
                                <li class="list-inline-item"><a href="#" class="btn btn-dark">Add to wishlist<i class="fa fa-heart"></i></a></li>
                            </ul>
                        </div>
                    </form>
                    <div class="specifications">
                        <ul class="property list-unstyled">
                            <li class="title">Focal Length</li>
                            <li class="value">70-200mm</li>
                        </ul>
                        <ul class="property list-unstyled">
                            <li class="title">Maximum Apparature</li>
                            <li class="value">F/2.8</li>
                        </ul>
                        <ul class="property list-unstyled">
                            <li class="title">Minimum Apparature</li>
                            <li class="value">F/22</li>
                        </ul>
                        <ul class="property list-unstyled">
                            <li class="title">Lens Construction</li>
                            <li class="value">21 element in 16 groups (with 7 ED and some Nano Crystal lens elements)</li>
                        </ul>
                        <ul class="property list-unstyled">
                            <li class="title">Weight</li>
                            <li class="value">Approximately 1.540 g/3.4 lb</li>
                        </ul>
                        <ul class="property list-unstyled">
                            <li class="title">Filter/Attachment size</li>
                            <li class="value">77mm</li>
                        </ul>
                        <ul class="property list-unstyled">
                            <li class="title">Maimum Reproduction Ratio</li>
                            <li class="value">.12x</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Related Items                         -->
    <section class="related-items p-t-small p-b-small">
        <div class="container">
            <h3 class="heading-line">You May Also Like</h3>
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="item text-center">
                        <div class="product-image"><img src="../static/img/detail-related-1.jpg" alt="camera">
                            <div class="overlay"><a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
                                <ul class="list-unstyled">
                                    <li><a href="#" class="btn btn-unique">View Details</a></li>
                                    <li><a href="#" class="btn btn-dark">Add To Cart</a></li>
                                </ul>
                            </div>
                        </div><a href="/detail" class="item-name">
                        <h4>EOS 7D Mark II EF-S 18 135mm</h4></a>
                        <ul class="list-inline rate text-primary">
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                        </ul>
                        <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, ut, voluptas possimus magnam.</p>
                        <ul class="price list-inline">
                            <li class="list-inline-item"> <span class="price">$1.299</span></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="item text-center">
                        <div class="product-image"><span class="new badge badge-pill badge-info text-uppercase">new</span><img src="../static/img/detail-related-2.jpg" alt="camera">
                            <div class="overlay"><a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
                                <ul class="list-unstyled">
                                    <li><a href="#" class="btn btn-unique">View Details</a></li>
                                    <li><a href="#" class="btn btn-dark">Add To Cart</a></li>
                                </ul>
                            </div>
                        </div><a href="/detail" class="item-name">
                        <h4>EOS 7D Mark II EF-S 18 135mm</h4></a>
                        <ul class="list-inline rate text-primary">
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                        </ul>
                        <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, ut, voluptas possimus magnam.</p>
                        <ul class="price list-inline">
                            <li class="list-inline-item"> <span class="price">$1.299</span></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="item text-center">
                        <div class="product-image"><img src="../static/img/detail-related-3.jpg" alt="camera">
                            <div class="overlay"><a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
                                <ul class="list-unstyled">
                                    <li><a href="#" class="btn btn-unique">View Details</a></li>
                                    <li><a href="#" class="btn btn-dark">Add To Cart</a></li>
                                </ul>
                            </div>
                        </div><a href="/detail" class="item-name">
                        <h4>EOS 7D Mark II EF-S 18 135mm</h4></a>
                        <ul class="list-inline rate text-primary">
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                        </ul>
                        <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, ut, voluptas possimus magnam.</p>
                        <ul class="price list-inline">
                            <li class="list-inline-item"> <span class="price">$1.299</span></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="item text-center">
                        <div class="product-image"><img src="../static/img/detail-related-3.jpg" alt="camera">
                            <div class="overlay"><a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
                                <ul class="list-unstyled">
                                    <li><a href="#" class="btn btn-unique">View Details</a></li>
                                    <li><a href="#" class="btn btn-dark">Add To Cart</a></li>
                                </ul>
                            </div>
                        </div><a href="/detail" class="item-name">
                        <h4>EOS 7D Mark II EF-S 18 135mm</h4></a>
                        <ul class="list-inline rate text-primary">
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                        </ul>
                        <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, ut, voluptas possimus magnam.</p>
                        <ul class="price list-inline">
                            <li class="list-inline-item"> <span class="price">$1.299</span></li>
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
                        <li> <a href="#">Home</a></li>
                        <li> <a href="#">About Us</a></li>
                        <li> <a href="#">Categories</a></li>
                        <li> <a href="#">Privacy policy</a></li>
                        <li> <a href="#">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <h3>Our Services</h3>
                    <ul class="list-unstyled">
                        <li> <a href="#">Footer Link</a></li>
                        <li> <a href="#">Footer Link</a></li>
                        <li> <a href="#">Footer Link</a></li>
                        <li> <a href="#">Footer Link</a></li>
                        <li> <a href="#">Footer Link</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-sm-6">
                    <h3>Extras</h3>
                    <ul class="list-unstyled">
                        <li> <a href="#">Footer Link</a></li>
                        <li> <a href="#">Footer Link</a></li>
                        <li> <a href="#">Footer Link</a></li>
                        <li> <a href="#">Footer Link</a></li>
                        <li> <a href="#">Footer Link</a></li>
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
    <p class="text-muted text-small">Stylesheet switching is done via JavaScript and can cause a blink while page loads. This will not happen in your production code.</p>
</div>
<!-- JavaScript files-->
<script src="../static/vendor/jquery/jquery.min.js"></script>
<script src="../static/vendor/popper.js/umd/popper.min.js"> </script>
<script src="../static/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../static/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="../static/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="../static/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
<script src="../static/vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="../static/js/front.js"></script>
</body>

<!-- Mirrored from demo.bootstrapious.com/photo/1-3//detail by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Feb 2018 17:04:10 GMT -->
</html>
