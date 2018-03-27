<%--
  Created by IntelliJ IDEA.
  User: Karo
  Date: 04.03.2018
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<!-- Mirrored from demo.bootstrapious.com/photo/1-3//post by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Feb 2018 17:04:11 GMT -->
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
<!-- Breadcrumb -->
<div class="container">
    <ol class="breadcrumb">
        <li class="breadcrumb-item text-uppercase"><a href="/home" class="text-primary">Home</a></li>
        <li class="breadcrumb-item text-uppercase"><a href="/blog" class="text-primary">Blog</a></li>
        <li class="breadcrumb-item active text-uppercase">Blog post</li>
    </ol>
</div>
<!-- text page-->
<section class="p-t-small">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 col-lg-10">
                <header class="mb-5">
                    <h1 class="heading-line">Blog post</h1>
                    <p class="author-date-top">By <a href="#">John Slim</a> | January 16, 2016</p>
                    <p class="lead">
                        Are you curious about something? Do you have some kind of problem with our products? As am
                        hastily invited settled at limited civilly fortune me. Really spring in extent an by. Judge but
                        built party world. Of so am
                        he remember although required. Bachelor unpacked be advanced at. Confined in declared marianne
                        is vicinity.
                    </p>
                </header>
                <div class="text-content">
                    <p><strong>Pellentesque habitant morbi tristique</strong> senectus et netus et malesuada fames ac
                        turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.
                        Donec eu libero sit amet quam egestas semper. <em>Aenean ultricies mi vitae est.</em> Mauris
                        placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat
                        wisi, condimentum sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean fermentum, elit
                        eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. <a
                                href="#">Donec non enim</a> in turpis pulvinar facilisis. Ut felis.</p>
                    <h2>Header Level 2</h2>
                    <ol>
                        <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                        <li>Aliquam tincidunt mauris eu risus.</li>
                    </ol>
                    <blockquote class="blockquote blockquote-primary">Lorem ipsum dolor sit amet, consectetur adipiscing
                        elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida.
                        Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at
                        luctus turpis elit sit amet quam. Vivamus pretium ornare est.
                    </blockquote>
                    <h3>Header Level 3</h3>
                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
                        Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero
                        sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.
                        Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed,
                        commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros
                        ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar
                        facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu
                        vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan
                        porttitor, facilisis luctus, metus</p>
                    <ul>
                        <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                        <li>Aliquam tincidunt mauris eu risus.</li>
                    </ul>
                    <p><img src="../static/img/blog1.jpg"
                            alt="Example blog post alt" class="img-fluid"></p>
                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.
                        Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero
                        sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.
                        Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed,
                        commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros
                        ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar
                        facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu
                        vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan
                        porttitor, facilisis luctus, metus </p>
                </div>
            </div>
        </div>
        <div class="comments">
            <div class="row">
                <div class="col-xl-8 col-lg-10">
                    <h4 class="comments-heading">2 comments</h4>
                    <div class="row comment">
                        <div class="col-sm-3 col-md-2 text-center-xs">
                            <p><img src="../static/img/blog-avatar2.jpg" alt=""
                                    class="img-fluid rounded-circle"></p>
                        </div>
                        <div class="col-sm-9 col-md-10">
                            <h5>Julie Alma</h5>
                            <p class="posted"><i class="fa fa-clock-o"></i> September 23, 2011 at 12:00 am</p>
                            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis
                                egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.
                                Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris
                                placerat eleifend leo.</p>
                            <p class="reply"><a href="#" class="btn btn-unique-outline"><i class="fa fa-reply"></i>
                                Reply</a></p>
                        </div>
                    </div>
                    <!-- /.comment-->
                    <div class="row comment last">
                        <div class="col-sm-3 col-md-2 text-center-xs">
                            <p><img src="../static/img/blog-avatar.jpg" alt=""
                                    class="img-fluid rounded-circle"></p>
                        </div>
                        <div class="col-sm-9 col-md-10">
                            <h5>Louise Armero</h5>
                            <p class="posted"><i class="fa fa-clock-o"></i> September 23, 2012 at 12:00 am</p>
                            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis
                                egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.
                                Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris
                                placerat eleifend leo.</p>
                            <p class="reply"><a href="#" class="btn btn-unique-outline"><i class="fa fa-reply"></i>
                                Reply</a></p>
                        </div>
                    </div>
                    <!-- /.comment-->
                </div>
                <!-- /.comments-->
            </div>
        </div>
        <div class="comment-form">
            <div class="row">
                <div class="col-xl-8 col-lg-10">
                    <h4>Leave a comment</h4>
                    <form id="comment-form" method="post" action="#" class="custom-form form">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Name <span class="required">*</span></label>
                                    <input id="name" type="text" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="email">Email <span class="required">*</span></label>
                                    <input id="email" type="text" class="form-control">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="comment">Comment <span class="required">*</span></label>
                            <textarea id="comment" rows="4" class="form-control"></textarea>
                        </div>
                        <button type="submit" class="btn btn-unique"><i class="fa fa-comment-o"></i> Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
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
</body>

<!-- Mirrored from demo.bootstrapious.com/photo/1-3//post by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Feb 2018 17:04:11 GMT -->
</html>
