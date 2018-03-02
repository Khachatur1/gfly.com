<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: xxx
  Date: 02.03.2018
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<!-- Mirrored from demo.bootstrapious.com/photo/1-3/category.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Feb 2018 17:04:05 GMT -->
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
    <div class="container"><a href="index-2.html" class="navbar-brand"> <img
            src="img/logo.png" alt="logo"></a>
        <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"
                class="navbar-toggler navbar-toggler-right">Menu <i class="fa fa-bars"></i></button>
        <div id="navbarSupportedContent" class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto d-md-flex flex-md-row align-items-md-center">
                <li class="nav-item active"><a id="navbarDropdown1" data-target="#" href="index-2.html"
                                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                               class="nav-link">Home<i class="fa fa-caret-down"></i></a>
                    <ul aria-labelledby="navbarDropdown1" class="dropdown-menu">
                        <li><a href="index-2.html" class="dropdown-item">Homepage 1</a></li>
                        <li><a href="index2.html" class="dropdown-item">Homepage 2</a></li>
                    </ul>
                </li>
                <li class="nav-item"><a href="category.html" class="nav-link">Category</a></li>
                <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
                <li class="nav-item"><a id="navbarDropdown2" data-target="#" href="http://example.com/"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                        class="nav-link">Template content<i class="fa fa-caret-down"></i></a>
                    <ul aria-labelledby="navbarDropdown2" class="dropdown-menu">
                        <li><a href="index-2.html" class="dropdown-item">Homepage 1</a></li>
                        <li><a href="index2.html" class="dropdown-item">Homepage 2</a></li>
                        <li><a href="category.html" class="dropdown-item">Category</a></li>
                        <li><a href="detail.html" class="dropdown-item">Product</a></li>
                        <li><a href="cart.html" class="dropdown-item">Shopping cart</a></li>
                        <li class="dropdown-divider"></li>
                        <li><a href="blog.html" class="dropdown-item">Blog</a></li>
                        <li><a href="post.html" class="dropdown-item">Blog Post</a></li>
                        <li><a href="text.html" class="dropdown-item">Text page</a></li>
                        <li><a href="contact.html" class="dropdown-item">Contact</a></li>
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
                <li class="nav-item"><a href="contact.html" class="nav-link">Contact Us</a></li>
                <li class="nav-item">
                    <ul class="list-inline">
                        <li class="list-inline-item"><a id="search" href="#" class="nav-link">
                            <div class="icon search"><i class="icon-magnifying-glass"></i></div>
                        </a></li>
                        <li class="list-inline-item"><a href="cart.html" class="nav-link">
                            <div class="icon cart"><i class="icon-cart"></i></div>
                            <span class="d-md-none d-lg-inline"><span class="no">2</span>items</span></a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="category-page">
    <!-- Breadcrumb -->
    <div class="container">
        <ol class="breadcrumb">
            <li class="breadcrumb-item text-uppercase"><a href="index-2.html" class="text-primary">Home</a></li>
            <li class="breadcrumb-item active text-uppercase">Cameras</li>
        </ol>
    </div>
    <!-- Products-->
    <section class="products p-t-small">
        <div class="container">
            <header>
                <div class="row d-flex align-items-center">
                    <div class="col-md-6">
                        <h1 class="heading-line">Cameras</h1>
                    </div>
                    <div class="col-md-6">
                        <div class="filters d-flex justify-content-end">
                            <select title="Brand" name="brand" class="filter-branselect form-control">
                               <c:forEach items="${categories}" var="category">

                                <option value=""> ${category.name.toUpperCase()}</option>
                                </c:forEach>

                            </select>
                            <select title="Alphabetically A-Z" name="alphabetically"
                                    class="filter-nameselect form-control">
                                <option value="">Alphabetically A-Z</option>
                                <option value="">Alphabetically Z-A</option>
                            </select>
                        </div>
                    </div>
                </div>
            </header>
            <div class="items">
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="item text-center">
                            <div class="product-image"><img
                                    src="img/product-1.jpg"
                                    alt="camera">
                                <div class="overlay"><a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
                                    <ul class="list-unstyled">
                                        <li><a href="detail.html" class="btn btn-unique">View Detail</a></li>
                                        <li><a href="#" class="btn btn-dark">Add To Cart</a></li>
                                    </ul>
                                </div>
                            </div>
                            <a href="detail.html" class="item-name">
                                <h4>EOS 7D Mark II EF-S 18 135mm</h4></a>
                            <ul class="list-inline rate text-primary">
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                            </ul>
                            <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, ut, voluptas
                                possimus magnam.</p>
                            <ul class="price list-inline">
                                <li class="list-inline-item"><span class="price">$1,299</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="item text-center">
                            <div class="product-image"><span
                                    class="new badge badge-pill badge-info text-uppercase">new</span><img
                                    src="img/product-2.jpg"
                                    alt="camera">
                                <div class="overlay"><a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
                                    <ul class="list-unstyled">
                                        <li><a href="detail.html" class="btn btn-unique">View Detail</a></li>
                                        <li><a href="#" class="btn btn-dark">Add To Cart</a></li>
                                    </ul>
                                </div>
                            </div>
                            <a href="detail.html" class="item-name">
                                <h4>EOS 7D Mark II EF-S 18 135mm</h4></a>
                            <ul class="list-inline rate text-primary">
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                            </ul>
                            <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, ut, voluptas
                                possimus magnam.</p>
                            <ul class="price list-inline">
                                <li class="list-inline-item"><span class="price">$1,299</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="item text-center">
                            <div class="product-image"><img
                                    src="img/product-3.jpg"
                                    alt="camera">
                                <div class="overlay"><a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
                                    <ul class="list-unstyled">
                                        <li><a href="detail.html" class="btn btn-unique">View Detail</a></li>
                                        <li><a href="#" class="btn btn-dark">Add To Cart</a></li>
                                    </ul>
                                </div>
                            </div>
                            <a href="detail.html" class="item-name">
                                <h4>EOS 7D Mark II EF-S 18 135mm</h4></a>
                            <ul class="list-inline rate text-primary">
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                            </ul>
                            <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, ut, voluptas
                                possimus magnam.</p>
                            <ul class="price list-inline">
                                <li class="list-inline-item"><span class="price">$1,299</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="item text-center">
                            <div class="product-image"><span class="sale badge badge-pill badge-primary text-uppercase">sale</span><img
                                    src="img/product-4.jpg"
                                    alt="camera">
                                <div class="overlay"><a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
                                    <ul class="list-unstyled">
                                        <li><a href="undefined.html" class="btn btn-unique">View Detail</a></li>
                                        <li><a href="#" class="btn btn-dark">Add To Cart</a></li>
                                    </ul>
                                </div>
                            </div>
                            <a href="undefined.html" class="item-name">
                                <h4>EOS 7D Mark II EF-S 18 135mm</h4></a>
                            <ul class="list-inline rate text-primary">
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                            </ul>
                            <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, ut, voluptas
                                possimus magnam.</p>
                            <ul class="price list-inline">
                                <li class="list-inline-item"><span class="price-old">$1,299</span></li>
                                <li class="list-inline-item"><span class="price-new">$700</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="item text-center">
                            <div class="product-image"><img
                                    src="img/product-5.jpg"
                                    alt="camera">
                                <div class="overlay"><a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
                                    <ul class="list-unstyled">
                                        <li><a href="detail.html" class="btn btn-unique">View Detail</a></li>
                                        <li><a href="#" class="btn btn-dark">Add To Cart</a></li>
                                    </ul>
                                </div>
                            </div>
                            <a href="detail.html" class="item-name">
                                <h4>EOS 7D Mark II EF-S 18 135mm</h4></a>
                            <ul class="list-inline rate text-primary">
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                            </ul>
                            <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, ut, voluptas
                                possimus magnam.</p>
                            <ul class="price list-inline">
                                <li class="list-inline-item"><span class="price">$1,299</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="item text-center">
                            <div class="product-image"><img
                                    src="img/product-6.jpg"
                                    alt="camera">
                                <div class="overlay"><a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
                                    <ul class="list-unstyled">
                                        <li><a href="detail.html" class="btn btn-unique">View Detail</a></li>
                                        <li><a href="#" class="btn btn-dark">Add To Cart</a></li>
                                    </ul>
                                </div>
                            </div>
                            <a href="detail.html" class="item-name">
                                <h4>EOS 7D Mark II EF-S 18 135mm</h4></a>
                            <ul class="list-inline rate text-primary">
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                            </ul>
                            <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, ut, voluptas
                                possimus magnam.</p>
                            <ul class="price list-inline">
                                <li class="list-inline-item"><span class="price">$1,299</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="item text-center">
                            <div class="product-image"><img
                                    src="img/product-7.jpg"
                                    alt="camera">
                                <div class="overlay"><a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
                                    <ul class="list-unstyled">
                                        <li><a href="detail.html" class="btn btn-unique">View Detail</a></li>
                                        <li><a href="#" class="btn btn-dark">Add To Cart</a></li>
                                    </ul>
                                </div>
                            </div>
                            <a href="detail.html" class="item-name">
                                <h4>EOS 7D Mark II EF-S 18 135mm</h4></a>
                            <ul class="list-inline rate text-primary">
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                            </ul>
                            <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, ut, voluptas
                                possimus magnam.</p>
                            <ul class="price list-inline">
                                <li class="list-inline-item"><span class="price">$1,299</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="item text-center">
                            <div class="product-image"><img
                                    src="img/product-2.jpg"
                                    alt="camera">
                                <div class="overlay"><a href="#" class="wishlist"><i class="fa fa-heart"></i></a>
                                    <ul class="list-unstyled">
                                        <li><a href="detail.html" class="btn btn-unique">View Detail</a></li>
                                        <li><a href="#" class="btn btn-dark">Add To Cart</a></li>
                                    </ul>
                                </div>
                            </div>
                            <a href="detail.html" class="item-name">
                                <h4>EOS 7D Mark II EF-S 18 135mm</h4></a>
                            <ul class="list-inline rate text-primary">
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                            </ul>
                            <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, ut, voluptas
                                possimus magnam.</p>
                            <ul class="price list-inline">
                                <li class="list-inline-item"><span class="price">$1,299</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Pagination -->
            <div class="pagination pagination-custom">
                <nav aria-label="...">
                    <ul class="pagination pagination-sm d-flex justify-content-between">
                        <li class="page-item disabled"><a href="#" tabindex="-1" class="page-link">Previous</a></li>
                        <li>
                            <ul class="pages list-inline">
                                <li class="page-item active list-inline-item"><a href="#" class="page-link">1</a></li>
                                <li class="page-item list-inline-item"><a href="#" class="page-link">2</a></li>
                                <li class="page-item list-inline-item"><a href="#" class="page-link">3</a></li>
                            </ul>
                        </li>
                        <li class="page-item"><a href="#" class="page-link">Next</a></li>
                    </ul>
                </nav>
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

<!-- Mirrored from demo.bootstrapious.com/photo/1-3/category.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Feb 2018 17:04:07 GMT -->
</html>
