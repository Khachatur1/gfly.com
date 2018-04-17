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
    <link rel="shortcut icon" href="../static/img/favicon.jpg">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
                            <select onchange="window.location.href=this.value;" class="filter-branselect form-control">
                                    <option>${selectCategory.name.toUpperCase()}</option>
                                <c:forEach items="${categories}" var="category">
                                    <option value="/${category.name.toLowerCase()}/models">${category.name.toUpperCase()}</option>
                                </c:forEach>
                            </select>
                            <!--       <select onchange="window.location.href=this.value;"
                                    class="filter-nameselect form-control">
                                <option value="">Alphabetically A-Z</option>
                                <option value="">Alphabetically Z-A</option>
                            </select> -->
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
                                        alt="camera" width="55%">
                                    <div class="overlay">
                                        <ul class="list-unstyled">
                                            <li><a href="/${products.category.name.toLowerCase()}/model?id=${products.id}" class="btn btn-unique">Տեսնել ավելին</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <a href="/${products.category.name.toLowerCase()}/model?id=${products.id}" class="item-name">
                                    <h4>${products.name}</h4></a>
                                <p>${products.description}</p>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <!-- Pagination -->


            <div class="pagination pagination-custom">
                <nav aria-label="...">
                    <ul class="pagination pagination-sm d-flex justify-content-between">
                        <li class="page-item">  <c:url value="/${selectCategory.name.toLowerCase()}/models" var="prev">
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
                        <li><a href="/${categories.get(0).name.toLowerCase()}/models">Մոդելներ</a></li>
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
</body>

<!-- Mirrored from demo.bootstrapious.com/photo/1-3//category by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 26 Feb 2018 17:04:07 GMT -->
</html>
