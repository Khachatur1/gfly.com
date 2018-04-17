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
    <title>Contact</title>
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
    <link rel="shortcut icon" href="../static/img/favicon.jpg">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<!-- Top Bar -->
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

                </p>
            </header>
            <div class="row">
                <div class="col-md-4">
                    <div class="contact-icon">
                        <div class="icon icon-051-placeholder-1"></div>
                    </div>
                    <h3>Հասցե</h3>
                    <p class="text-muted font-weight-light"><a href="https://www.bing.com/maps?v=2&pc=FACEBK&mid=8100&rtp=~pos.40.784660200668_43.840612471104_%D4%B3%D5%B5%D5%B8%D6%82%D5%B4%D6%80%D5%B8%D6%82+%D4%B1%D5%BE%D5%AB%D5%A1%D5%B4%D5%B8%D5%A4%D5%A5%D5%AC%D5%A1%D5%B5%D5%AB%D5%B6+%D5%AD%D5%B4%D5%A2%D5%A1%D5%AF%3A&cp=40.784660200668~43.840612471104&lvl=16&sty=r&rtop=0~0~0~&mode=D&FORM=FBKPL6&mkt=en-US"> Abovyan 252
                        <br>Gyumri</a></p>
                </div>
                <div class="col-md-4">
                    <div class="contact-icon">
                        <div class="icon icon-051-support"></div>
                    </div>
                    <h3>Հեռախոս</h3>
                    <p class="text-muted font-weight-light"></p>
                    <p><strong>+374 98 346 321</strong></p>
                </div>
                <div class="col-md-4">
                    <div class="contact-icon">
                        <div class="icon icon-051-message"></div>
                    </div>
                    <h3>Էլ. փոստ</h3>
                    <p class="text-muted font-weight-light"></p>
                    <ul class="list-style-none">
                        <li><strong><a href="mailto:">khachatur098346321@gmail.com</a></strong></li>
                        <li><strong><a href="mailto:">khachatur098346321@mail.ru</a></strong></li>
                       </ul>
                </div>
            </div>
        </div>
    </section>
    <!--  <div id="map"></div>
    --   <section>
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
      </section>-->
</div>

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
                    <h3>Site Map</h3>
                    <ul class="list-unstyled">
                        <li><a href="/home">Գլխավոր</a></li>



                    </ul>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <h3>Our Services</h3>
                    <ul class="list-unstyled">
                        <li><a href="/models">Մոդելներ</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-sm-6">
                    <h3>Extras</h3>
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
                    <p>&copy; 2016 &nbsp <span class="text-primary">G - FLY &nbsp&nbsp</span>Ավիամոդելային Լաբորատորիա</p>
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
<!-- create your own Maps API Key for production use, this one is domain-restricted-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ"></script>
</body>

<!-- Mirrored from demo.bootstrapious.com/photo/1-3//contact by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Feb 2018 17:04:11 GMT -->
</html>
