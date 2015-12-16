<%-- 
    Document   : profileEditContent
    Created on : 17-Dec-2015, 02:13:45
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="row">
            	<div class="col-xs-3"></div>
                <div class="table-responsive col-xs-6" >
                	<form data-toggle="validator" role="form">   <!--TO DO Connect To UpdateUserProfileServlet And Variables2-->
				 <div class="form-group">
				    <label for="inputName" class="control-label">Name</label>
				   	 <input type="text" class="form-control" id="inputName" placeholder="Cina Saffary" required>
				 </div>
				 <div class="form-group">
				    <label for="inputEmail" class="control-label">Email</label>
				         <input type="email" class="form-control" id="inputEmail" placeholder="Email" data-error="Bruh, that email address is invalid" required>
				             <div class="help-block with-errors"></div>
					     </div>
                                 <div class="form-group">
				         <label for="inputPassword" class="control-label">Password</label>
					     <div >
						<input type="password" data-minlength="6" class="form-control" id="inputPassword" placeholder="Password" required>
						     <span class="help-block">Minimum of 6 characters</span>
					     </div>
						 <input type="password" class="form-control" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match" placeholder="Confirm" required>
						   <div class="help-block with-errors"></div>
				</div>
			        <div>
			            <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
			</form>
			    </div>
			    <div class="col-xs-3"></div>
			</div>
