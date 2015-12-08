<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">
    <head>
        <title>FutsalNow - Futsal. Everyday.</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="/img/icon.ico" />
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-theme.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>
	
    <body>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <div class="container" id="banner">
                <img src="img/banner.png" alt="Banner" style="width:100%;">
        </div>

        <div class="container" id="content">			

            <nav class="navbar navbar-default">
                    <div class="navbar-header">
                            <!-- Hamburger Icon for mobile below -->
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-main" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                            </button>

                            <a class="navbar-brand" href="#">FN</a>
                    </div>

                    <div class="collapse navbar-collapse" id="navbar-collapse-main">
                            <ul class="nav navbar-nav">
                                    <li><a href="${context}/index.jsp">Home <span class="sr-only">(current)</span></a></li>
                                    <li class="active"><a href="#">Courts</a></li>
                                    <li><a href="#">Price</a></li>
                            </ul>

                            <ul class="nav navbar-nav navbar-right">
                                    <li>
                                            <a href="#"><span class="glyphicon glyphicon-user" style="padding-right:10px;"></span>Login</a>
                                    </li>
                            </ul>
                    </div>
            </nav>
            
            
            <div class="row"> <!-- Outer Row -->
                <div class="col-xs-3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Available Courts</h3>
                        </div>

                        <div class="panel-body">
                            <div class="btn-group-vertical center-block" role="group" aria-label="Court Details">
                                <button type="button" class="btn btn-primary">Court 1</button>
                                <button type="button" class="btn btn-primary">Court 2</button>
                                <button type="button" class="btn btn-primary">Court 3</button>
                                <button type="button" class="btn btn-primary">Court 4</button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Booking</h3>
                        </div>

                        <div class="panel-body">
                            <div class="btn-group-vertical center-block" role="group" aria-label="Court Details">
                                <button type="button" class="btn btn-success">Court 1</button>
                                <button type="button" class="btn btn-success">Court 2</button>
                                <button type="button" class="btn btn-success">Court 3</button>
                                <button type="button" class="btn btn-success">Court 4</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xs-6">
                    <div class="panel panel-default">						
                        <div class="panel-body">
                            <img src="img/vinylfield.png" alt="Vinyl Field" class="img-responsive">
                        </div>
                    </div>
                </div>
                
                <div class="col-xs-3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Court Price</h3>
                        </div>

                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>Court 1</td>
                                    <td>RM45</td>
                                <tr>

                                <tr>
                                    <td>Court 2</td>
                                    <td>RM55</td>
                                <tr>

                                <tr>
                                    <td>Court 3</td>
                                    <td>RM55</td>
                                <tr>

                                <tr>
                                    <td>Court 4</td>
                                    <td>RM60</td>
                                <tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div> <!-- ./Outer Row -->
            
        </div>
    </body>
</html>