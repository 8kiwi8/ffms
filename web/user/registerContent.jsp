<%-- 
    Document   : registerContent
    Created on : 17-Dec-2015, 02:16:44
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- register  -->
				
            <div class="row">
            	<div class="col-xs-3"></div>
                <div class="table-responsive col-xs-6" >
                	<div class="panel-body">
	                    <form data-toggle="validator" role="form" method="post" action="<c:out value="${pageContext.servletContext.contextPath}"/>/RegisterServlet">
				 <div class="form-group">
		                    <label for="inputName" class="control-label">Name</label>
                                    <input type="text" class="form-control" id="inputName" name="inputName" placeholder="Name" required>
				 </div>
				 <div class="form-group">
				    <label for="inputEmail" class="control-label">Email</label>
					<input type="email" class="form-control" id="inputEmail" name="inputUsername" placeholder="Email" data-error="Bruh, that email address is invalid" required>
					    <div class="help-block with-errors"></div>
					    </div>
					    <div class="form-group">
						<label for="inputPassword" class="control-label">Password</label>
						   	<div >
						     	    <input type="password" data-minlength="6" name="inputPassword" class="form-control" id="inputPassword" placeholder="Password" required>
						     	    <span class="help-block">Minimum of 6 characters</span>
						    	</div>
						    	
					    </div>
			                     <div class="form-group">
                                                 <div class="alert alert-danger alert-dismissible" role="alert" style="float:left;">
                                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <strong>Error!</strong> Start doing some work
                                            </div>
						 <button type="submit" class="btn btn-primary" style="float:right;">Submit</button>
					     </div>
                                             
			    </form>

			</div>
			</div>
			    <div class="col-xs-3"></div>
			</div>
