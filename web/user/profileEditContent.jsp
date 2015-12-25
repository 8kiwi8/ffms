<%-- 
    Document   : profileEditContent
    Created on : 17-Dec-2015, 02:13:45
    Author     : ASUS
--%><%@page import="business.data.User"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>


<%
    
  User user = (User) session.getAttribute("user");  
  if(user==null){
   response.sendRedirect("index.jsp");
  }
 
%>
<div class="row">
            	<div class="col-xs-3"></div>
                <div class="table-responsive col-xs-6" >
                	<form data-toggle="validator" role="form" action="<c:out value="${pageContext.servletContext.contextPath}"/>/ProfileEditServlet">   <!--TO DO Connect To UpdateUserProfileServlet And Variables2-->
				 <div class="form-group">
				    <label for="inputName" class="control-label">Name</label>
                                    <input type="text" class="form-control" id="inputName" placeholder="<%out.println(user.getName());%>" required>
				 </div>
				 <div class="form-group">
				    <label for="inputEmail" class="control-label">Email</label>
				         <input type="email" class="form-control" id="inputEmail" placeholder="<%out.println(user.getUsername());%>" data-error="Bruh, that email address is invalid" required>
				             <div class="help-block with-errors"></div>
					     </div>
                                 <div class="form-group">
				         <label for="inputPassword" class="control-label">Password</label>
					     <div >
						<input type="password" data-minlength="6" class="form-control" id="inputPassword" placeholder="Password" required>
						     <span class="help-block">Minimum of 6 characters</span>
					     </div>
						 
				</div>
			        <div>
			            <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
			</form>
			    </div>
			    <div class="col-xs-3"></div>
			</div>
