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

<!-- Mirrored from demo.bootstrapious.com/photo/1-3//category by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Feb 2018 17:04:05 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Category</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <link rel="stylesheet"
          href="../static/js/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="../static/js/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../static/css/custom-icons.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,700">
    <link rel="stylesheet"
          href="../static/js/owl.carousel/assets/owl.carousel.min.css">
    <link rel="stylesheet"
          href="../static/js/owl.carousel/assets/owl.theme.default.min.css">
    <link rel="stylesheet" href="../static/css/style.default.css"
          id="theme-stylesheet">
    <link rel="stylesheet" href="../static/css/custom.css">
    <link rel="shortcut icon" href="../static/favicon.jpg">
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
                    <li class="list-inline-item"><a href="/admin">My Account</a></li>
                    <li class="list-inline-item"><a href="/calendar">Calendar</a></li>
                    <li class="list-inline-item"><a href="/login">Login</a></li>
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
                <li class="nav-item"><a href="/models" class="nav-link">Models</a></li>
                <li class="nav-item"><a href="/blog" class="nav-link">Blog</a></li>
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
<div class="category-page">
    <!-- Breadcrumb -->
    <div class="container">
        <ol class="breadcrumb">
            <li class="breadcrumb-item text-uppercase"><a href="/home" class="text-primary">Home</a></li>
            <li class="breadcrumb-item active text-uppercase">${selectCategory.name.toUpperCase()}</li>
        </ol>
    </div>
    <!-- Products-->
    <section class="products p-t-small">
        <div class="container">
            <header>
                <div class="row d-flex align-items-center">
                    <div class="col-md-6">
                        <h1 class="heading-line">${selectCategory.name.toUpperCase()}</h1>
                    </div>
                    <div class="col-md-6">
                        <div class="filters d-flex justify-content-end">
                            <select onselect="this.value" title="Brand" name="brand"
                                    onchange="window.location.href=this.value;" class="filter-branselect form-control">
                                    <option>${selectCategory.name.toUpperCase()}</option>
                                <c:forEach items="${categories}" var="category">
                                    <option value="/${category.name.toLowerCase()}/models">${category.name.toUpperCase()}</option>
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
                    <c:forEach items="${allProducts}" var="products">
                        <div class="col-lg-3 col-md-4 col-sm-6">
                            <div class="item text-center">
                                <div class="product-image"><img
                                        src="/product/image?fileName=${products.picUrl}"
                                        alt="camera" width="156px" height="130px">
                                    <div class="overlay">
                                        <ul class="list-unstyled">
                                            <li><a href="/model/${products.id}" class="btn btn-unique">View Detail</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <a href="/detail" class="item-name">
                                    <h4>${products.name}</h4></a>
                                <ul class="list-inline rate text-primary">
                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                </ul>
                                <p>${products.description}</p>
                                <ul class="price list-inline">
                                    <li class="list-inline-item"><span class="price">$1,299</span></li>
                                </ul>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <!-- Pagination -->


            <div class="pagination pagination-custom">
                <nav aria-label="...">
                    <ul class="pagination pagination-sm d-flex justify-content-between">
                        <li class="page-item disabled">  <c:url value="/${selectCategory.name.toLowerCase()}/models" var="prev">
                            <c:param name="page" value="${page-1}"/>
                        </c:url>
                            <c:if test="${page > 1}">
                                <a href="<c:out value="${prev}" />"  class="page-link">Prev</a>
                            </c:if></li>
                        <li>
                            <ul class="pages list-inline">
                                <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
                                    <li class="page-item list-inline-item">
                                        <c:choose>
                                            <c:when test="${page == i.index}">
                                                <span class="page-item active list-inline-item"><a href="#" class="page-link">${i.index}</a></span>
                                            </c:when>
                                            <c:otherwise>
                                                <c:url value="/${selectCategory.name.toLowerCase()}/models" var="url">
                                                    <c:param name="page" value="${i.index}"/>
                                                </c:url>
                                                <a href='<c:out value="${url}" />' class="page-link">${i.index}</a>
                                            </c:otherwise>
                                        </c:choose>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>
                        <li class="page-item"> <c:url value="/${selectCategory.name.toLowerCase()}/models" var="next">
                            <c:param name="page" value="${page + 1}"/>
                        </c:url>
                            <c:if test="${page + 1 <= maxPages}">
                                <a href='<c:out value="${next}" />' class="page-link">Next</a>
                            </c:if></li>
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
                <form class="d-flex" action="/cart/result">
                    <input type="search" name="result" placeholder="What are you looking for...">
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
</body>

<!-- Mirrored from demo.bootstrapious.com/photo/1-3//category by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Feb 2018 17:04:07 GMT -->
</html>