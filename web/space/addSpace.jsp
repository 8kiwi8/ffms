<%-- 
    Document   : addSpace
    Created on : Dec 3, 2015, 6:45:20 PM
    Author     : kingw
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
	<head>
		<title>FutsalNow - Futsal. Everyday.</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link href="../css/bootstrap.min.css" rel="stylesheet">
		<link href="../css/bootstrap-theme.min.css" rel="stylesheet">
		<link href="../css/style.css" rel="stylesheet">
	</head>
	
	<body>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="../js/bootstrap.min.js"></script>
		<script src="../js/validator.js"></script>
		<script src="../js/validator.min.js"></script>
		
		<div class="container" id="banner">
			<img src="${pageContext.request.contextPath}/img/banner.png" alt="Banner" style="width:100%;">
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
						<li ><a href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
						<li><a href="#">Courts</a></li>
						<li><a href="../booking/myBooking.jsp">My Booking</a></li>
					</ul>
					
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a> <span class="glyphicon glyphicon-user" style="padding-right:10px;" ></span>
								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#mymodal">Login</button>
								<div class="modal fade" id="mymodal">
									<div class="modal-dialog">
                   						 <div class="modal-header">
                   						 	<h3> Login </h3>

                    					</div>
                    				<form>	
                    				<div class="modal-body">
                    					<div class="form-group">
                            				<label for="exampleInputEmail1">Email address</label>
                           					 <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                         				 </div>
                         				 <div class="form-group">
                           					 <label for="exampleInputPassword1">Password</label>
                           					 <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                         				 </div>
                    				</div>
                    				<div class="modal-footer">

                                                 <a class="btn btn-default" href="register.html" role="button">SignUp</a>
                      				 <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                     				 <button type="submit" class="btn btn-default">Submit</button>
                     				</div>
                     			        </form>


							</a>

						</li>
					</ul>
				</div>
			</nav>
			
			

				
				
            <div class="row">
            	<div class="col-xs-3"></div>
                <div class="table-responsive col-xs-6" >
                	<form id="addSpaceForm" method="post" action="<c:out value="${pageContext.servletContext.contextPath}"/>/AddSpaceServlet">   <!--TO DO add Variables2-->
				 <div class="form-group">
				    <label for="inputName" class="control-label">Name</label>
				   	 <input type="text" class="form-control" id="inputName" placeholder="Grass court" required>
				 </div>
                                 <div class="form-group">
				    <label for="inputName" class="control-label">Description</label>
				   	 <input type="textarea" class="form-control" id="inputName" placeholder="Size, further details, condition" required>
				 </div>
                                 <div class="form-group">
				    <label for="inputName" class="control-label">Price</label>
				   	 <input type="textarea" class="form-control" id="inputName" placeholder="RM50" required>
				 </div>
                                 <div class="form-group">
                                    <label for="exampleInputFile">Upload Picture</label>
                                    <input type="file" id="exampleInputFile">
                                    <p class="help-block">Example block-level help text here.</p>
                                 </div>
                            
				
			        <div>
			            <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
			</form>
			    </div>
			    <div class="col-xs-3"></div>
			</div>
			

				<!-- Controls -->
				
			
		</div>
	</body>
</html>