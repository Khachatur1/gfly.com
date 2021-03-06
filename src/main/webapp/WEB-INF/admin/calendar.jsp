<%--
  Created by IntelliJ IDEA.
  User: karo
  Date: 31.03.18
  Time: 23:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bootstrap Admin Theme v3</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- jQuery UI -->
    <link href="https://code.jquery.com/ui/1.10.3/themes/redmond/jquery-ui.css" rel="stylesheet" media="screen">

    <!-- Bootstrap -->
    <link href="../../static/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../static/admin/vendors/fullcalendar/fullcalendar.css" rel="stylesheet" media="screen">
    <!-- styles -->
    <link href="../../static/admin/css/styles.css" rel="stylesheet">

    <link href="../../static/admin/css/calendar.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="header">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <!-- Logo -->
                <div class="logo">
                    <h1><a>Calendar</a></h1>
                </div>
            </div>
            <div class="col-md-5">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="input-group form">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
	                         <button class="btn btn-primary" type="button">Search</button>
	                       </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <div class="navbar navbar-inverse" role="banner">
                    <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown">My Account <b class="caret"></b></a>
                                <ul class="dropdown-menu animated fadeInUp">
                                    <li><a href="/login">Logout</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="page-content">
    <div class="row">
        <div class="col-md-2">
            <div class="sidebar content-box" style="display: block;">
                <ul class="nav">
                    <!-- Main menu -->
                    <li><a href="/admin/home"><i class="glyphicon glyphicon-home"></i> Home</a></li>
                    <li><a href="/home"><i class="glyphicon glyphicon-list"></i> G-FLY</a></li>
                    <li class="current"><a href="/admin/calendar"><i class="glyphicon glyphicon-calendar"></i> Calendar</a></li>
                    <li><a href="/admin/tables"><i class="glyphicon glyphicon-list"></i> Tables</a></li>
                    <li><a href="/admin/forms"><i class="glyphicon glyphicon-tasks"></i> Forms</a></li>
                    <li class="submenu">
                        <a>
                            <i class="glyphicon glyphicon-list"></i> Pages
                            <span class="caret pull-right"></span>
                        </a>
                        <!-- Sub menu -->
                        <ul>
                            <li><a href="/login">Login</a></li>
                            <li><a href="/admin/signup">Signup</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-md-10">

            <div class="content-box-large">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <div id='external-events'>
                                <h4>Draggable Events</h4>
                                <div class='external-event'>My Event 1</div>
                                <div class='external-event'>My Event 2</div>
                                <div class='external-event'>My Event 3</div>
                                <div class='external-event'>My Event 4</div>
                                <div class='external-event'>My Event 5</div>
                                <div class='external-event'>My Event 6</div>
                                <div class='external-event'>My Event 7</div>
                                <div class='external-event'>My Event 8</div>
                                <div class='external-event'>My Event 9</div>
                                <div class='external-event'>My Event 10</div>
                                <div class='external-event'>My Event 11</div>
                                <div class='external-event'>My Event 12</div>
                                <div class='external-event'>My Event 13</div>
                                <div class='external-event'>My Event 14</div>
                                <div class='external-event'>My Event 15</div>
                                <p>
                                    <input type='checkbox' id='drop-remove' /> <label for='drop-remove'>remove after drop</label>
                                </p>
                            </div>
                        </div>
                        <div class="col-md-10">
                            <div id='calendar'></div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
</div>

<footer>
    <div class="container">

        <div class="copy text-center">
            &copy; 2016 &nbsp <a href="/home">G - FLY</a>
        </div>

    </div>
</footer>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- jQuery UI -->
<script src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../../static/admin/bootstrap/js/bootstrap.min.js"></script>

<script src="../../static/admin/vendors/fullcalendar/fullcalendar.js"></script>
<script src="../../static/admin/vendors/fullcalendar/gcal.js"></script>
<script src="../../static/admin/js/custom.js"></script>
<script src="../../static/admin/js/calendar.js"></script>
</body>
</html>
