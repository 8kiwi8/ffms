<%-- 
    Document   : adminIndexContent
    Created on : 17-Dec-2015, 00:35:35
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
						<img src="img/slider1.png" alt="..." style="width: 100%; height: 500px; margin: 0 auto;">
						<div class="carousel-caption">
							...
						</div>
					</div>
					
					<div class="item">
						<img src="img/slider2.png" alt="..." style="width: 100%; height: 500px; margin: 0 auto;">
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
