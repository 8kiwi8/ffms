<%-- 
    Document   : listUserContent
    Created on : 17-Dec-2015, 01:58:25
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="row">
            	<div class="col-xs-3"></div>
                <div class="table-responsive col-xs-6" >
                	<h4> List of Member </h4>
                    <table class="table table-bordered">
                    	
                        <tr> 
                    		<td> User </td>
                    		<td> Email </td>
                    	        <td> Remove user</td>
                    	    
                    		
                    	</tr>
                        <c:forEach items="${requestScope.users}" var="user">
                    	<tr> 
                    		<!-- take data from database user name -->
                     		<td> ${user.name}</td>
                    		<td> ${user.username} </td>   		
                    		<td> <button type="submit" class="btn btn-default" onclick="window.location.href = '${pageContext.servletContext.contextPath}/DeleteUser?uid=${user.uid}'"> Delete </button> </td>
                    	</tr>
                        </c:forEach>

    
                    </table>
			    </div>
			    <div class="col-xs-3"></div>
			</div>
			

		
