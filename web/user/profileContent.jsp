<%-- 
    Document   : profileContent
    Created on : 17-Dec-2015, 02:02:06
    Author     : ASUS
--%>
<%@page import="business.data.User"%>
<%
    
  User user = (User) session.getAttribute("user");  
  if(user==null){
   response.sendRedirect("index.jsp");
  }
 
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row" style>
            	<div class="col-xs-3"></div>
                <div class="table-responsive col-xs-6" >
                	<h4> User Profile <h4>
                    <table class="table table-bordered">
                    	
                    		
      							
                        <tr><td>Name</td><td><%
                        out.println(user.getName());
                        %></td><tr>
       						 <tr><td>Email</td><td><%
                        out.println(user.getUsername());
                        %></td></tr>
       						 <tr><td>Password</td><td><%
                        out.println(user.getPassword());
                        %></td></tr>

    
                    </table>
                    <a class="btn btn-default" href="profileEdit.jsp" role="button">Edit</a>
			    </div>
			    <div class="col-xs-3"></div>
            </div>		 
