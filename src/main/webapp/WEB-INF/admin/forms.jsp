<%--
  Created by IntelliJ IDEA.
  User: karo
  Date: 31.03.18
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- jQuery UI -->
    <link href="https://code.jquery.com/ui/1.10.3/themes/redmond/jquery-ui.css" rel="stylesheet" media="screen">

    <!-- Bootstrap -->
    <link href="../../static/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- styles -->
    <link href="../../static/admin/css/styles.css" rel="stylesheet">

    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link href="../../static/admin/vendors/form-helpers/css/bootstrap-formhelpers.min.css" rel="stylesheet">
    <link href="../../static/admin/vendors/select/bootstrap-select.min.css" rel="stylesheet">
    <link href="../../static/admin/vendors/tags/css/bootstrap-tags.css" rel="stylesheet">

    <link href="../../static/admin/css/forms.css" rel="stylesheet">

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
                    <h1><a>Forms</a></h1>
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
                                <a class="dropdown-toggle" data-toggle="dropdown">My Account <b
                                        class="caret"></b></a>
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
                    <li><a href="/admin/calendar"><i class="glyphicon glyphicon-calendar"></i> Calendar</a></li>
                    <li><a href="/admin/tables"><i class="glyphicon glyphicon-list"></i> Tables</a></li>
                    <li class="current"><a href="/admin/forms"><i class="glyphicon glyphicon-tasks"></i> Forms</a></li>
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

            <div class="row">
                <div class="col-md-6">
                    <div class="content-box-large">
                        <div class="panel-heading">
                            <div class="panel-title">Add Category</div>

                        </div>
                        <div class="panel-body">
                            <spring:form action="/admin/saveCategory" method="post" modelAttribute="category"
                                         enctype="multipart/form-data" class="form-horizontal" role="form">
                                <div class="form-group">
                                    <spring:label path="name"
                                                  class="col-sm-2 control-label">Name</spring:label>
                                    <div class="col-sm-10">
                                        <spring:input path="name" class="form-control" placeholder="Name"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="image" class="col-md-2 control-label">Image</label>
                                    <div class="col-md-10">
                                        <input type="file" class="btn btn-default" id="image" name="image">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <spring:label path="description"
                                                  class="col-sm-2 control-label">Description</spring:label>
                                    <div class="col-sm-10">
                                        <spring:textarea path="description" class="form-control"
                                                         placeholder="Description" rows="3"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-primary">Add Category</button>
                                    </div>
                                </div>
                            </spring:form>
                            </br>
                            </br>
                            <div class="panel-title">Add Image</div>

                        </div>
                        <div class="panel-body">
                            <spring:form action="/admin/saveImage" method="post" modelAttribute="image"
                                         enctype="multipart/form-data" class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label for="image" class="col-md-2 control-label">Image</label>
                                    <div class="col-md-10">
                                        <input type="file" class="btn btn-default" id="image" name="image">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <spring:label path="product"
                                                  class="col-sm-2 control-label">Product</spring:label>
                                    <div class="col-sm-10">
                                        <spring:select path="product" items="${allProducts}" itemLabel="name"
                                                       class="form-control"></spring:select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-primary">Add Image</button>
                                    </div>
                                </div>
                            </spring:form>
                        </div>

                    </div>

                </div>
                <div class="col-md-6">


                    <div class="content-box-large">
                        <div class="panel-heading">
                            <div class="panel-title">Add Product</div>

                        </div>
                        <div class="panel-body">


                            <spring:form action="/admin/saveProduct" method="post" modelAttribute="product"
                                         enctype="multipart/form-data" class="form-horizontal" role="form">
                                <div class="form-group">
                                    <spring:label path="name"
                                                  class="col-sm-2 control-label">Name</spring:label>
                                    <div class="col-sm-10">
                                        <spring:input path="name" class="form-control" placeholder="Name"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <spring:label path="wingspan"
                                                  class="col-sm-2 control-label">Wingspan</spring:label>
                                    <div class="col-sm-10">
                                        <spring:input path="wingspan" class="form-control" placeholder="Wingspan"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <spring:label path="weight"
                                                  class="col-sm-2 control-label">Weight</spring:label>
                                    <div class="col-sm-10">
                                        <spring:input path="weight" class="form-control" placeholder="Weight"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <spring:label path="engine"
                                                  class="col-sm-2 control-label">Engine</spring:label>
                                    <div class="col-sm-10">
                                        <spring:select path="engine" class="form-control">
                                            <spring:option value="NON"></spring:option>
                                            <spring:option value="DVS"></spring:option>
                                            <spring:option value="ELECTRO"></spring:option>
                                        </spring:select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <spring:label path="material"
                                                  class="col-sm-2 control-label">Material</spring:label>
                                    <div class="col-sm-10">
                                        <spring:select path="material" class="form-control">
                                            <spring:option value="DEPRON"></spring:option>
                                            <spring:option value="BALSA"></spring:option>
                                        </spring:select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <spring:label path="category"
                                                  class="col-sm-2 control-label">Category</spring:label>
                                    <div class="col-sm-10">
                                        <spring:select path="category" items="${allCategories}" itemLabel="name"
                                                       class="form-control"></spring:select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="image" class="col-md-2 control-label">Image</label>
                                    <div class="col-md-10">
                                        <input type="file" class="btn btn-default" id="image" name="image">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <spring:label path="description"
                                                  class="col-sm-2 control-label">Description</spring:label>
                                    <div class="col-sm-10">
                                        <spring:textarea path="description" class="form-control"
                                                         placeholder="Description" rows="3"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <spring:label path="videoUrl"
                                                  class="col-sm-2 control-label">Video Url</spring:label>
                                    <div class="col-sm-10">
                                        <spring:input path="videoUrl" class="form-control" placeholder="Video Url"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-primary">Add Product</button>
                                    </div>
                                </div>
                            </spring:form>
                        </div>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="content-box-large">
                        <div class="panel-heading">
                            <div class="panel-title">Add Post</div>
                        </div>
                        <div class="panel-body">
                            <spring:form action="/admin/savePost" method="post" modelAttribute="post"
                                         enctype="multipart/form-data" class="form-horizontal" role="form">
                                <div class="form-group">
                                    <spring:label path="title"
                                                  class="col-sm-2 control-label">Title</spring:label>
                                    <div class="col-sm-10">
                                        <spring:input path="title" class="form-control" placeholder="Title"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <spring:label path="description"
                                                  class="col-sm-2 control-label">Description</spring:label>
                                    <div class="col-sm-10">
                                        <spring:textarea path="description" class="form-control"
                                                         placeholder="Description" rows="3"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="image" class="col-md-2 control-label">Image</label>
                                    <div class="col-md-10">
                                        <input type="file" class="btn btn-default" id="image" name="image">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <spring:label path="user"
                                                  class="col-sm-2 control-label">User</spring:label>
                                    <div class="col-sm-10">
                                        <spring:select path="user" items="${users}" itemLabel="name"
                                                       class="form-control"></spring:select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-primary">Add Post</button>
                                    </div>
                                </div>
                            </spring:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- jQuery UI -->
<script src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../../static/admin/bootstrap/js/bootstrap.min.js"></script>

<script src="../../static/admin/vendors/form-helpers/js/bootstrap-formhelpers.min.js"></script>

<script src="../../static/admin/vendors/select/bootstrap-select.min.js"></script>

<script src="../../static/admin/vendors/tags/js/bootstrap-tags.min.js"></script>

<script src="../../static/admin/vendors/mask/jquery.maskedinput.min.js"></script>

<script src="../../static/admin/vendors/moment/moment.min.js"></script>

<script src="../../static/admin/vendors/wizard/jquery.bootstrap.wizard.min.js"></script>

<!-- bootstrap-datetimepicker -->
<link href="../../static/admin/vendors/bootstrap-datetimepicker/datetimepicker.css" rel="stylesheet">
<script src="../../static/admin/vendors/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>


<link href="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/css/bootstrap-editable.css"
      rel="stylesheet"/>
<script src="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/js/bootstrap-editable.min.js"></script>

<script src="../../static/admin/js/custom.js"></script>
<script src="../../static/admin/js/forms.js"></script>
</body>
</html>
