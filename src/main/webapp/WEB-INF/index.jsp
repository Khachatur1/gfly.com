<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>G-FLY</title>
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
    <link rel="shortcut icon" href="../static/img/favicon.jpg">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-md">
    <div class="container"><a href="/home" class="navbar-brand"> <img
            src="../static/img/logo.png" alt="logo"></a>
        <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"
                class="navbar-toggler navbar-toggler-right">Menu <i class="fa fa-bars"></i></button>
        <div id="navbarSupportedContent" class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto d-md-flex flex-md-row align-items-md-center">
                <li class="nav-item"><a href="/home" class="nav-link">Գլխավոր</a></li>
                <li class="nav-item"><a href="/models" class="nav-link">Մոդելներ</a></li>
                <li class="nav-item"><a href="/blog" class="nav-link">Բլոգ</a></li>
                <li class="nav-item"><a href="/contact" class="nav-link">Հետադարձ կապ</a></li>
                <li class="nav-item">
                    <ul class="list-inline">
                        <li class="list-inline-item"><a id="search" href="#" class="nav-link">
                            <div class="icon search"><i class="icon-magnifying-glass"></i></div>
                        </a></li>
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
                    <h2 class="h5 heading-line d-none d-md-block">Կատեգորիաներ</h2>
                </header>
                <div class="row text-center">
                    <c:forEach items="${categories}" var="category">

                        <div class="col-md-4 item"><a href="/${category.name.toLowerCase()}/models">
                            <h4>${category.name.toUpperCase()}</h4>
                            <p>${category.description}</p>
                            <div class="image"><img title="${category.name.toUpperCase()}" src="/category/image?fileName=${category.picUrl}"
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
                <h2 class="h3 heading-line">Օդանավեր</h2>
            </header>
            <div class="row d-flex flex-row align-items-stretch">
                <div class="col-lg-6">
                    <div class="item item-big text-right">
                        <h2>

                            ${product1.name}
                        </h2><a href="/${product1.category.name.toLowerCase()}/model?id=${product1.id}" class="btn btn-unique btn-lg">Տեսնել Ավելին</a><img
                            src="/product/image?fileName=${product1.picUrl}" alt="camera"
                            class="img-fluid">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="row">
                        <c:forEach items="${products2}" var="product">
                            <div class="col-md-6">
                                <div class="item">
                                    <h4>${product.name}</h4>
                                    <p class="text-primary">$1.299</p><img
                                        src="/product/image?fileName=${product.picUrl}" alt="camera"
                                        class="img-fluid">
                                    <div class="overlay d-flex align-items-center justify-content-center"><a
                                            href="/${product.category.name.toLowerCase()}/model?id=${product.id}" class="btn btn-unique">Տեսնել Ավելին</a></div>
                                </div>
                            </div>
                        </c:forEach>

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
                    <h2>${product3.name}</h2>
                    <p>${product3.description}</p><a
                        href="/${product3.category.name.toLowerCase()}/model?id=${product3.id}" class="btn btn-dark shop-now">Տեսնել Ավելին</a>
                </div>
                <div class="col-md-6 d-none d-md-block">
                    <div class="product"><img src="/product/image?fileName=${product3.picUrl}"
                                              alt="camera" class="img-fluid" width="450px"></div>
                </div>
            </div>
        </div>
    </section>
    <!-- Lenses Section-->
    <section class="product-2">
        <div class="container">
            <header>
                <h2 class="h3 heading-line">Օդանավեր</h2>
            </header>
            <div class="row">
                <div class="col-lg-6">
                    <div class="row">
                        <c:forEach items="${products4}" var="product">
                            <div class="col-md-6">
                                <div class="item">
                                    <h4>${product.name}</h4>
                                    <p class="text-primary">${product.category.name}</p><img
                                        src="./product/image?fileName=${product.picUrl}" alt="lens"
                                        class="img-fluid">
                                    <div class="overlay d-flex align-items-center justify-content-center"><a
                                            href="/${product.category.name.toLowerCase()}/model?id=${product.id}" class="btn btn-unique">Տեսնել Ավելին</a></div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="col-lg-6 js-pull">
                    <div class="item item-big">
                        <h2>

                            ${product5.name}
                        </h2><a href="/${product5.category.name.toLowerCase()}/model?id=${product5.id}" class="btn btn-unique btn-lg">Տեսնել Ավելին</a><img
                            src="/product/image?fileName=${product5.picUrl}" alt="lens"
                            class="img-fluid">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Divider Section-->
    <section class="divider">
        <div class="container text-center">
            <p class="h1">Նոր մոդելներ</p>
            <br>
            <br>
            <br>
            <a href="/models/new" class="btn btn-white">Տեսնել ավելին</a>
        </div>
    </section>
    <!-- Newsletter Section-->

</div>
<!-- Search Panel-->
<div class="search-overlay">
    <div class="search-inner d-flex justify-content-center align-items-center">
        <div class="search-close"><i class="icon-close"></i></div>
        <div class="container">
            <div class="form-holder">
                <form class="d-flex" action="/models/search">
                    <input type="search" name="name" placeholder="What are you looking for...">
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

                    <ul class="list-unstyled">
                        <li><a href="/home">Գլխավոր</a></li>


                    </ul>
                </div>
                <div class="col-lg-3 col-sm-6">

                    <ul class="list-unstyled">
                        <li><a href="/models">Մոդելներ</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-sm-6">

                    <ul class="list-unstyled">
                        <li><a href="/contact">Հետադարձ կապ</a></li>
                    </ul>
                </div>
                <div class="col-lg-4 col-sm-6 details js-pull">
                    <ul class="list-unstyled">

                        <li class="d-flex align-items-center">
                            <div class="icon"><i class="icon-phone-call"></i></div>
                            <div class="text">
                                <h3>Հեռ: +374 98֊346֊321</h3>
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
                    <p>&copy; 2016 &nbsp <span class="text-primary">G - FLY &nbsp&nbsp</span>Ավիամոդելային Լաբորատորիա
                    </p>
                </div>
                <div class="col-sm-6 text-right">
                    <li class="list-inline-item"><a
                            href="https://web.facebook.com/Aviamodelizm1Gyumri/?timeline_context_item_type=intro_card_work&timeline_context_item_source=100003461520899&pnref=lhc"
                            target="_blank"><i class="fa fa-facebook"></i></a>
                    </li>
                    <li class="list-inline-item"><a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                    </li>
                    <li class="list-inline-item"><a href="#" target="_blank"><i class="fa fa-instagram"></i></a>
                    </li>
                    <li class="list-inline-item"><a href="#" target="_blank"><i class="fa fa-youtube-play"></i></a>
                    </li>
                    <li class="list-inline-item"><a href="#" target="_blank"><i class="fa fa-pinterest"></i></a>
                    </li>
                </div>
            </div>
        </div>
    </div>
</footer>

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

<!-- Mirrored from demo.bootstrapious.com/photo/1-3/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Feb 2018 17:04:04 GMT -->
</html>
