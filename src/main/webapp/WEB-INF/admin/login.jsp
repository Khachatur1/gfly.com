<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: karo
  Date: 31.03.18
  Time: 23:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bootstrap Admin Theme v3</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="../../static/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- styles -->
    <link href="../../static/admin/css/styles.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body class="login-bg">
<div class="header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <!-- Logo -->
                <div class="logo">
                    <h1><a>Login</a></h1>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="page-content container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="login-wrapper">
                <div class="box">
                    <div class="content-wrap">
                        <h6>Sign In</h6>
                        <div class="social">
                            <a class="face_login" href="#">
	                                <span class="face_icon">
	                                    <img src="../../static/admin/images/facebook.png" alt="fb">
	                                </span>
                                <span class="text">Sign in with Facebook</span>
                            </a>
                            <div class="division">
                                <hr class="left">
                                <span>or</span>
                                <hr class="right">
                            </div>
                        </div>
                        <form action="<c:url value="/login"/> " method="post" name="loginForm">
                            <input class="form-control" type="text" placeholder="email" name="email"/>
                            <input class="form-control" type="password" placeholder="password" name="password"/>
                            <button type="submit" class="btn btn-default">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../../static/admin/bootstrap/js/bootstrap.min.js"></script>
<script src="../../static/admin/js/custom.js"></script>
</body>
</html>
