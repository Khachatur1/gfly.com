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
    <title>Bootstrap Admin Theme v3</title>
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
                    <h1><a href="/admin">Bootstrap Admin Theme</a></h1>
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
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Account <b
                                        class="caret"></b></a>
                                <ul class="dropdown-menu animated fadeInUp">
                                    <li><a href="profile.html">Profile</a></li>
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
                    <li><a href="/admin"><i class="glyphicon glyphicon-home"></i> Dashboard</a></li>
                    <li><a href="/calendar"><i class="glyphicon glyphicon-calendar"></i> Calendar</a></li>
                    <li><a href="/tables"><i class="glyphicon glyphicon-list"></i> Tables</a></li>
                    <li><a href="/buttons"><i class="glyphicon glyphicon-record"></i> Buttons</a></li>
                    <li class="current"><a href="/forms"><i class="glyphicon glyphicon-tasks"></i> Forms</a></li>
                    <li class="submenu">
                        <a href="#">
                            <i class="glyphicon glyphicon-list"></i> Pages
                            <span class="caret pull-right"></span>
                        </a>
                        <!-- Sub menu -->
                        <ul>
                            <li><a href="/login">Login</a></li>
                            <li><a href="/signup">Signup</a></li>
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
                            <div class="panel-title">Add Product</div>

                            <div class="panel-options">
                                <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
                                <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
                            </div>
                        </div>
                        <div class="panel-body">


                            <spring:form action="/saveProduct" method="post" modelAttribute="product"
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
                <div class="col-md-6">
                    <div class="content-box-large">
                        <div class="panel-heading">
                            <div class="panel-title">Add Category</div>

                            <div class="panel-options">
                                <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
                                <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            <spring:form action="/saveCategory" method="post" modelAttribute="category"
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

                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-md-6">
                    <div class="content-box-large">
                        <div class="panel-heading">
                            <div class="panel-title">Default Elements</div>
                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal" action="">

                                <fieldset>
                                    <legend>Default Form Elements</legend>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label" for="text-field">Text field</label>
                                        <div class="col-md-10">
                                            <input class="form-control" placeholder="Default Text Field" type="text">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-2 control-label" for="text-field">Auto Complete</label>
                                        <div class="col-md-10">
                                            <input class="form-control" placeholder="Type somethine..." type="text"
                                                   list="list">
                                            <datalist id="list">
                                                <option value="Alexandra"></option>

                                            </datalist>
                                            <p class="note"><strong>Note:</strong> works in Chrome, Firefox, Opera and
                                                IE10.</p>
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Password field</label>
                                        <div class="col-md-10">
                                            <input class="form-control" placeholder="Password field" type="password"
                                                   value="mypassword">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-2 control-label" for="textarea">Textarea</label>
                                        <div class="col-md-10">
                                            <textarea class="form-control" placeholder="Textarea" rows="4"></textarea>
                                        </div>
                                    </div>


                                </fieldset>

                                <fieldset>
                                    <legend>Unstyled Checkbox</legend>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Checkbox default</label>
                                        <div class="col-md-10">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">
                                                    Checkbox 1 </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">
                                                    Checkbox 2 </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox">
                                                    Checkbox 3 </label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Inline</label>
                                        <div class="col-md-10">
                                            <label class="checkbox-inline">
                                                <input type="checkbox">
                                                Checkbox 2 </label>
                                            <label class="checkbox-inline">
                                                <input type="checkbox">
                                                Checkbox 2 </label>
                                            <label class="checkbox-inline">
                                                <input type="checkbox">
                                                Checkbox 3 </label>
                                        </div>
                                    </div>

                                </fieldset>

                                <fieldset>
                                    <legend>Unstyled Radiobox</legend>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Radios default</label>
                                        <div class="col-md-10">
                                            <div class="radio">
                                                <label>
                                                    <input type="radio">
                                                    Radiobox 1 </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio">
                                                    Radiobox 2 </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio">
                                                    Radiobox 3 </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Inline</label>
                                        <div class="col-md-10">
                                            <label class="radio radio-inline">
                                                <input type="radio">
                                                Radiobox 1 </label>
                                            <label class="radio radio-inline">
                                                <input type="radio">
                                                Radiobox 2 </label>
                                            <label class="radio radio-inline">
                                                <input type="radio">
                                                Radiobox 3 </label>
                                        </div>
                                    </div>


                                </fieldset>

                                <fieldset>
                                    <legend>File inputs</legend>

                                    <div class="form-group">
                                        <label class="col-md-2 control-label">File input</label>
                                        <div class="col-md-10">
                                            <input type="file" class="btn btn-default" id="exampleInputFile1">
                                            <p class="help-block">
                                                some help text here.
                                            </p>
                                        </div>
                                    </div>

                                </fieldset>


                                <fieldset>
                                    <legend>Unstyled Select</legend>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label" for="select-1">Select</label>
                                        <div class="col-md-10">

                                            <select class="form-control" id="select-1">
                                                <option>Amsterdam</option>

                                                <option>Minneapolis</option>
                                            </select>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label" for="multiselect1">Multiple select</label>
                                        <div class="col-md-10">
                                            <select multiple="multiple" id="multiselect-1"
                                                    class="form-control custom-scroll" title="Click to Select a City">

                                                <option>Miami</option>
                                                <option>Minneapolis</option>
                                            </select>
                                        </div>
                                    </div>
                                </fieldset>

                                <fieldset>
                                    <legend>Input States</legend>

                                    <div class="form-group has-warning">
                                        <label class="col-md-2 control-label">Input warning</label>
                                        <div class="col-md-10">
                                            <div class="input-group">
                                                <input class="form-control" type="text">
                                                <span class="input-group-addon"><i class="fa fa-warning"></i></span>
                                            </div>
                                            <span class="help-block">Something may have gone wrong</span>
                                        </div>

                                    </div>

                                    <div class="form-group has-error">
                                        <label class="col-md-2 control-label">Input error</label>
                                        <div class="col-md-10">
                                            <div class="input-group">
                                                <input class="form-control" type="text">
                                                <span class="input-group-addon"><i
                                                        class="glyphicon glyphicon-remove-circle"></i></span>
                                            </div>
                                            <span class="help-block"><i class="fa fa-warning"></i> Please correct the error</span>
                                        </div>
                                    </div>

                                    <div class="form-group has-success">
                                        <label class="col-md-2 control-label">Input success</label>
                                        <div class="col-md-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-dollar"></i></span>
                                                <input class="form-control" type="text">
                                                <span class="input-group-addon"><i class="fa fa-check"></i></span>
                                            </div>
                                            <span class="help-block">Something may have gone wrong</span>
                                        </div>
                                    </div>

                                </fieldset>

                                <fieldset>
                                    <legend>Input sizes</legend>

                                    <div class="form-group">
                                        <label class="control-label col-md-2">Extra Small Input</label>
                                        <div class="col-md-10">
                                            <input class="form-control input-xs" placeholder=".input-xs" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">Small Input</label>
                                        <div class="col-md-10">
                                            <input class="form-control input-sm" placeholder=".input-sm" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">Default Input</label>
                                        <div class="col-md-10">
                                            <input class="form-control" placeholder="Default input" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">Large Input</label>
                                        <div class="col-md-10">
                                            <input class="form-control input-lg" placeholder=".input-lg" type="text">
                                        </div>
                                    </div>

                                </fieldset>

                                <fieldset>
                                    <legend>Select Sizes</legend>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">Small Select</label>
                                        <div class="col-md-10">
                                            <select class="form-control input-sm">

                                                <option>Miami</option>
                                                <option>Minneapolis</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">Default Select</label>
                                        <div class="col-md-10">
                                            <select class="form-control">

                                                <option>Miami</option>
                                                <option>Minneapolis</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-2">Large Select</label>
                                        <div class="col-md-10">
                                            <select class="form-control input-lg">
                                                <option>Amsterdam</option>
                                                <option>Atlanta</option>
                                                <option>Miami</option>
                                                <option>Minneapolis</option>
                                            </select>
                                        </div>
                                    </div>

                                </fieldset>

                                <fieldset>
                                    <legend>Prepend &amp; Append</legend>

                                    <div class="form-group">
                                        <label class="control-label col-md-2" for="prepend">Prepended Input</label>
                                        <div class="col-md-10">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="input-group">
                                                        <span class="input-group-addon">@</span>
                                                        <input class="form-control" id="prepend" placeholder="Username"
                                                               type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-md-2" for="prepend">W/ input &amp;
                                            radios</label>
                                        <div class="col-md-10">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="input-group">
    <span class="input-group-addon">
    <span class="onoffswitch">
    <input type="checkbox" name="start_interval" class="onoffswitch-checkbox" id="st3">
    <label class="onoffswitch-label" for="st3">
    <div class="onoffswitch-inner" data-swchon-text="YES" data-swchoff-text="NO"></div>
    <div class="onoffswitch-switch"></div>
    </label>
    </span>
    </span>
                                                        <input class="form-control" placeholder="" type="text">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="control-label col-md-2" for="append">Appended Input</label>
                                        <div class="col-md-10">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="input-group">
                                                        <input class="form-control" id="append" type="text">
                                                        <span class="input-group-addon">.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-md-2" for="appendprepend">Combined</label>
                                        <div class="col-md-10">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="input-group">
                                                        <span class="input-group-addon">$</span>
                                                        <input class="form-control" id="appendprepend" type="text">
                                                        <span class="input-group-addon">.00</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-md-2" for="appendbutton">With buttons</label>
                                        <div class="col-md-10">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="input-group">
                                                        <input class="form-control" id="appendbutton" type="text">
                                                        <div class="input-group-btn">
                                                            <button class="btn btn-default" type="button">
                                                                Search
                                                            </button>
                                                            <button class="btn btn-default" type="button">
                                                                Options
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-md-2">With dropdowns</label>
                                        <div class="col-md-10">
                                            <div class="row">
                                                <div class="col-sm-12">

                                                    <div class="input-group">
                                                        <input type="text" class="form-control">
                                                        <div class="input-group-btn">
                                                            <button type="button" class="btn btn-default" tabindex="-1">
                                                                Action
                                                            </button>
                                                            <button type="button"
                                                                    class="btn btn-default dropdown-toggle"
                                                                    data-toggle="dropdown" tabindex="-1">
                                                                <span class="caret"></span>
                                                            </button>
                                                            <ul class="dropdown-menu pull-right" role="menu">
                                                                <li><a href="javascript:void(0);">Action</a></li>
                                                                <li><a href="javascript:void(0);">Another action</a>
                                                                </li>
                                                                <li><a href="javascript:void(0);">Something else
                                                                    here</a></li>
                                                                <li class="divider"></li>
                                                                <li><a href="javascript:void(0);">Cancel</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-md-2"></label>
                                        <div class="col-md-10">
                                            <div class="row">
                                                <div class="col-sm-12">

                                                    <div class="input-group">
                                                        <div class="input-group-btn">
                                                            <button type="button" class="btn btn-default" tabindex="-1">
                                                                Action
                                                            </button>
                                                            <button type="button"
                                                                    class="btn btn-default dropdown-toggle"
                                                                    data-toggle="dropdown" tabindex="-1">
                                                                <span class="caret"></span>
                                                            </button>
                                                            <ul class="dropdown-menu" role="menu">
                                                                <li><a href="javascript:void(0);">Action</a></li>
                                                                <li><a href="javascript:void(0);">Another action</a>
                                                                </li>
                                                                <li><a href="javascript:void(0);">Something else
                                                                    here</a></li>
                                                                <li class="divider"></li>
                                                                <li><a href="javascript:void(0);">Cancel</a></li>
                                                            </ul>
                                                        </div>
                                                        <input type="text" class="form-control">
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </fieldset>

                                <div class="form-actions">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <button class="btn btn-default" type="submit">
                                                Cancel
                                            </button>
                                            <button class="btn btn-primary" type="submit">
                                                <i class="fa fa-save"></i>
                                                Submit
                                            </button>
                                        </div>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="content-box-large">
                        <div class="panel-heading">
                            <div class="panel-title">Form Widgets</div>

                            <div class="panel-options">
                                <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
                                <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
                            </div>
                        </div>
                        <div class="panel-body">

                            <div>
                                <h4>Select</h4>
                                <p>
                                <div class="bfh-selectbox" data-name="selectbox3" data-value="12" data-filter="true">
                                    <div data-value="1">Option 1</div>
                                    <div data-value="2">Option 2</div>
                                    <div data-value="3">Option 3</div>
                                    <div data-value="4">Option 4</div>
                                    <div data-value="5">Option 5</div>
                                    <div data-value="6">Option 6</div>
                                    <div data-value="7">Option 7</div>
                                    <div data-value="8">Option 8</div>
                                    <div data-value="9">Option 9</div>
                                    <div data-value="10">Option 10</div>
                                    <div data-value="11">Option 11</div>
                                    <div data-value="12">Option 12</div>
                                    <div data-value="13">Option 13</div>
                                    <div data-value="14">Option 14</div>
                                    <div data-value="15">Option 15</div>
                                </div>
                                </p>
                            </div>

                            <div>
                                <h4>Color Picker</h4>
                                <p>
                                <div class="bfh-colorpicker" data-name="colorpicker1"></div>
                                </p>
                            </div>

                            <div>
                                <h4>Date Picker</h4>
                                <p>
                                <div class="bfh-datepicker" data-format="y-m-d" data-date="today"></div>
                                </p>
                            </div>

                            <div>
                                <h4>Time Picker</h4>
                                <p>
                                <div class="bfh-timepicker" data-mode="12h"></div>
                                </p>
                            </div>

                            <div>
                                <h4>Slider</h4>
                                <p>
                                <div class="bfh-slider" data-name="slider1"></div>
                                </p>
                            </div>

                            <div>
                                <h4>Country Picker</h4>
                                <p>
                                <div class="bfh-selectbox bfh-countries" data-country="US" data-flags="true"></div>
                                </p>
                            </div>

                            <div>
                                <h4>State Picker</h4>
                                <p>
                                <div id="countries_states2" class="bfh-selectbox bfh-countries" data-country="US"></div>
                                <br><br>
                                <div class="bfh-selectbox bfh-states" data-country="countries_states2"></div>
                                </p>
                            </div>

                            <div>
                                <h4>Currency Picker</h4>
                                <p>
                                <div class="bfh-selectbox bfh-currencies" data-currency="EUR" data-flags="true"></div>
                                </p>
                            </div>

                            <div>
                                <h4>Language Picker</h4>
                                <p>
                                <div class="bfh-selectbox bfh-languages" data-language="en_US" data-flags="true"></div>
                                </p>
                            </div>

                            <div>
                                <h4>Timezone Picker</h4>
                                <p>
                                <div class="bfh-selectbox bfh-timezones" data-country="US"></div>
                                </p>
                            </div>

                            <div>
                                <h4>Google Font Picker</h4>
                                <p>
                                <div class="bfh-selectbox bfh-googlefonts" data-font="Lato"></div>
                                </p>
                            </div>

                            <div>
                                <h4>Font Picker</h4>
                                <p>
                                <div class="bfh-selectbox bfh-fonts" data-font="Arial"></div>
                                </p>
                            </div>

                            <div>
                                <h4>Font Size Picker</h4>
                                <p>
                                <div class="bfh-selectbox bfh-fontsizes" data-fontsize="12"></div>
                                </p>
                            </div>

                            <div>
                                <h4>Select</h4>
                                <p>
                                    <select class="selectpicker">
                                        <option>Mustard</option>
                                        <option>Ketchup</option>
                                        <option>Relish</option>
                                    </select>
                                </p>
                            </div>

                            <div>
                                <h4>Select With Groups</h4>
                                <p>
                                    <select class="selectpicker">
                                        <optgroup label="Picnic">
                                            <option>Mustard</option>
                                            <option>Ketchup</option>
                                            <option>Relish</option>
                                        </optgroup>
                                        <optgroup label="Camping">
                                            <option>Tent</option>
                                            <option>Flashlight</option>
                                            <option>Toilet Paper</option>
                                        </optgroup>
                                    </select>
                                </p>
                            </div>

                            <div>
                                <h4>Select Multiple</h4>
                                <p>
                                    <select class="selectpicker" multiple>
                                        <option>Mustard</option>
                                        <option>Ketchup</option>
                                        <option>Relish</option>
                                    </select>
                                </p>
                            </div>

                            <div>
                                <h4>Tags</h4>
                                <p>
                                <div id="tags"></div>
                                </p>
                            </div>

                            <fieldset>
                                <legend>
                                    Masking
                                </legend>

                                <div class="form-group">
                                    <label for="h-input">Date masking</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control mask-date" data-mask="99/99/9999"
                                               data-mask-placeholder="-">
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    </div>
                                    <p class="note">
                                        Data format **/**/****
                                    </p>
                                </div>

                                <div class="form-group">
                                    <label for="h-input">Phone masking</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" data-mask="(999) 999-9999"
                                               data-mask-placeholder="X">
                                        <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                                    </div>
                                    <p class="note">
                                        Data format (XXX) XXX-XXXX
                                    </p>
                                </div>

                                <div class="form-group">
                                    <label for="h-input">Credit card masking</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" data-mask="9999-9999-9999-9999"
                                               data-mask-placeholder="*">
                                        <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                    </div>
                                    <p class="note">
                                        Data format ****-****-****-****
                                    </p>
                                </div>

                                <div class="form-group">
                                    <label for="h-input">Serial number masking</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" data-mask="***-***-***-***-***-***"
                                               data-mask-placeholder="_">
                                        <span class="input-group-addon"><i class="fa fa-asterisk"></i></span>
                                    </div>
                                    <p class="note">
                                        Data format ***-***-***-***-***-***
                                    </p>
                                </div>

                                <div class="form-group">
                                    <label for="h-input">Tax ID masking</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" data-mask="99-9999999"
                                               data-mask-placeholder="X">
                                        <span class="input-group-addon"><i class="fa fa-briefcase"></i></span>
                                    </div>
                                    <p class="note">
                                        Data format 99-9999999
                                    </p>
                                </div>

                            </fieldset>

                            <div>
                                <h4>Inline Edit</h4>
                                <p>
                                <table id="user" class="table table-bordered table-striped" style="clear: both">
                                    <tbody>
                                    <tr>
                                        <td width="35%">Simple text field</td>
                                        <td width="65%"><a href="#" id="username" data-type="text" data-pk="1"
                                                           data-title="Enter username" class="editable editable-click"
                                                           data-original-title="" title="">superuser</a></td>
                                    </tr>
                                    <tr>
                                        <td>Empty text field, required</td>
                                        <td><a href="#" id="firstname" data-type="text" data-pk="1"
                                               data-placement="right" data-placeholder="Required"
                                               data-title="Enter your firstname"
                                               class="editable editable-click editable-empty">Empty</a></td>
                                    </tr>
                                    <tr>
                                        <td>Select, local array, custom display</td>
                                        <td><a href="#" id="sex" data-type="select" data-pk="1" data-value=""
                                               data-title="Select sex" class="editable editable-click"
                                               style="color: gray;">not selected</a></td>
                                    </tr>
                                    <tr>
                                        <td>Select, remote array, no buttons</td>
                                        <td><a href="#" id="group" data-type="select" data-pk="1" data-value="5"
                                               data-title="Select group" class="editable editable-click">Admin</a></td>
                                    </tr>
                                    <tr>
                                        <td>Select, error while loading</td>
                                        <td><a href="#" id="status" data-type="select" data-pk="1" data-value="0"
                                               data-title="Select status" class="editable editable-click">Active</a>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Combodate (date)</td>
                                        <td><a href="#" id="dob" data-type="combodate" data-value="1984-05-15"
                                               data-format="YYYY-MM-DD" data-viewformat="DD/MM/YYYY"
                                               data-template="D / MMM / YYYY" data-pk="1"
                                               data-title="Select Date of birth" class="editable editable-click">15/05/1984</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Combodate (datetime)</td>
                                        <td><a href="#" id="event" data-type="combodate"
                                               data-template="D MMM YYYY HH:mm" data-format="YYYY-MM-DD HH:mm"
                                               data-viewformat="MMM D, YYYY, HH:mm" data-pk="1"
                                               data-title="Setup event date and time"
                                               class="editable editable-click editable-empty">Empty</a></td>
                                    </tr>


                                    <tr>
                                        <td>Textarea, buttons below. Submit by <i>ctrl+enter</i></td>
                                        <td><a href="#" id="comments" data-type="textarea" data-pk="1"
                                               data-placeholder="Your comments here..." data-title="Enter comments"
                                               class="editable editable-pre-wrapped editable-click">awesome
                                            user!</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                                </p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="content-box-large">
                        <div class="panel-heading">
                            <div class="panel-title">Bootstrap Wizard</div>

                            <div class="panel-options">
                                <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
                                <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div id="rootwizard">
                                <div class="navbar">
                                    <div class="navbar-inner">
                                        <div class="container">
                                            <ul class="nav nav-pills">
                                                <li class="active"><a href="#tab1" data-toggle="tab">First</a></li>
                                                <li><a href="#tab2" data-toggle="tab">Second</a></li>
                                                <li><a href="#tab3" data-toggle="tab">Third</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tab1">
                                        <form class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <label for="inputEmail3" class="col-sm-2 control-label">Text
                                                    Field</label>
                                                <div class="col-sm-10">
                                                    <input type="email" class="form-control" id="inputEmail3"
                                                           placeholder="Email">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword3" class="col-sm-2 control-label">Password
                                                    Field</label>
                                                <div class="col-sm-10">
                                                    <input type="password" class="form-control" id="inputPassword3"
                                                           placeholder="Password">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">Textarea</label>
                                                <div class="col-sm-10">
                                                    <textarea class="form-control" placeholder="Textarea"
                                                              rows="3"></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">Readonly</label>
                                                <div class="col-sm-10">
                                                    <span class="form-control">Read only text</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox"> Checkbox
                                                        </label>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox"> Checkbox
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane" id="tab2">
                                        <form class="form-inline" role="form">

                                            <fieldset>
                                                <div class="form-group col-sm-3">
                                                    <label class="sr-only" for="exampleInputEmail2">Email
                                                        address</label>
                                                    <input type="email" class="form-control" id="exampleInputEmail2"
                                                           placeholder="Enter email">
                                                </div>
                                                <div class="form-group col-sm-3">
                                                    <label class="sr-only" for="exampleInputPassword2">Password</label>
                                                    <input type="password" class="form-control"
                                                           id="exampleInputPassword2" placeholder="Password">
                                                </div>
                                                <div class="checkbox col-sm-3">
                                                    <label>
                                                        <input type="checkbox" class="checkbox">
                                                        <span>Remember me </span></label>
                                                </div>
                                                <button type="submit" class="btn btn-primary">
                                                    Sign in
                                                </button>
                                            </fieldset>

                                        </form>
                                    </div>
                                    <div class="tab-pane" id="tab3">
                                        <fieldset>
                                            <legend>Unstyled Checkbox</legend>
                                            <div class="form-group">
                                                <label class="col-md-2 control-label">Checkbox default</label>
                                                <div class="col-md-10">
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox">
                                                            Checkbox 1 </label>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox">
                                                            Checkbox 2 </label>
                                                    </div>
                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox">
                                                            Checkbox 3 </label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-2 control-label">Inline</label>
                                                <div class="col-md-10">
                                                    <label class="checkbox-inline">
                                                        <input type="checkbox">
                                                        Checkbox 2 </label>
                                                    <label class="checkbox-inline">
                                                        <input type="checkbox">
                                                        Checkbox 2 </label>
                                                    <label class="checkbox-inline">
                                                        <input type="checkbox">
                                                        Checkbox 3 </label>
                                                </div>
                                            </div>

                                        </fieldset>
                                    </div>
                                    <ul class="pager wizard">
                                        <li class="previous first disabled" style="display:none;"><a
                                                href="javascript:void(0);">First</a></li>
                                        <li class="previous disabled"><a href="javascript:void(0);">Previous</a></li>
                                        <li class="next last" style="display:none;"><a
                                                href="javascript:void(0);">Last</a></li>
                                        <li class="next"><a href="javascript:void(0);">Next</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Page content -->
        </div>
    </div>
</div>

<footer>
    <div class="container">

        <div class="copy text-center">
            Copyright 2014 <a href='#'>Website</a>
        </div>

    </div>
</footer>

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
