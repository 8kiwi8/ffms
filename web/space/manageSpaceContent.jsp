<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="row">
            	<div class="col-xs-3"></div>
                <div class="table-responsive col-xs-6" >
                	<h4> Space Management </h4>
                    <table class="table">
                    	<tr> 
                    		<td>Name</td>
                                <td>Description</td>
                                <td>Price</td>
                                <td>Update</td>
                                <td>Delete</td>
                                <td>Activate/Deactivate </td>
                                
                    	</tr>
                        <c:forEach items="${spaces}" var="space">
                           <!--TO DO correct the variables, make activate/deactivate work -->
                    	<tr> 
                    		<td>${space.name}</td>
                                <td>${space.description}</td>
                                <td>${space.price}</td>
                                <td><button type="button" class="btn btn-default"> Update </button></td>
                                <td><button type="button" class="btn btn-default"> Delete </button></td>
                                <td>Activate</td>
                  
                    		
                    	</tr>
                        </c:forEach>

    
                    </table>
			    </div>
			    <div class="col-xs-3"></div>
			</div>
			

				<!-- Controls -->
				
			
		</div>