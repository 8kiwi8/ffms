<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}" />
<!doctype html>
<html lang="en">
	<head>
		<title>FutsalNow - Futsal. Everyday.</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
                <link href="${context}/css/bootstrap.min.css" rel="stylesheet">
		<link href="${context}/css/bootstrap-theme.min.css" rel="stylesheet">
		<link href="${context}/css/style.css" rel="stylesheet">
	</head>
	
	<body>
		<script src="${context}/js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		
		<div class="container" id="banner">
			<img src="${context}/img/banner.png" alt="Banner" style="width:100%;">
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
						<li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
						<li><a href="#">Courts</a></li>
						<li><a href="#">Price</a></li>
					</ul>
					
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="#"><span class="glyphicon glyphicon-user" style="padding-right:10px;"></span>Login</a>
						</li>
					</ul>
				</div>
			</nav>
			
			<div id="image-slider" class="carousel slide" data-ride="carousel" style="margin-bottom:50px;">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#image-slider" data-slide-to="0" class="active"></li>
					<li data-target="#image-slider" data-slide-to="1"></li>
					<li data-target="#image-slider" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="${context}/img/slider1.png" alt="..." style="width: 100%; height: 500px; margin: 0 auto;">
						<div class="carousel-caption">
							...
						</div>
					</div>
					
					<div class="item">
						<img src="${context}/img/slider2.png" alt="..." style="width: 100%; height: 500px; margin: 0 auto;">
						<div class="carousel-caption">
							...
						</div>
					</div>
					
				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#image-slider" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#image-slider" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
			
		</div>
	</body>
</html>