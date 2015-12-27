<%-- 
    Document   : mybookingContent
    Created on : 17-Dec-2015, 00:47:08
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div class="row">
            	<div class="col-xs-2"></div>
				
                <div class="col-xs-8" >
                	<h4> My Booking </h4>
                    <table class="table table-bordered">
                    	<tr> 
                    		<td> Date </td>
                    		<td> User </td>
                    		<td> Court </td>
                    		<td> Price </td>
                    		<td> Status </td>
                    		<td> Delete?</td>
                    	</tr>
                        <c:forEach items="${bookings}" var="booking">
                    	<tr> 
                    		<!-- take data from database court,user name, booking(data & time) -->
                     		<td>${booking.stringDate}</td>
                    		<td>${booking.user.name}</td>
                    		<td>${booking.space.name}</td>
                    		<td>${booking.price}</td>
                    		<td>${booking.status}</td>
                    		<td><a href="<c:out value="${pageContext.servletContext.contextPath}"/>/DeleteBooking?bid=${booking.bid}" class="btn btn-danger" role="button">Delete</a></td>
                    	</tr>
                        </c:forEach>

                    </table>
			    </div>
				
			    <div class="col-xs-8"></div>
			</div>
			

				<!-- Controls -->
				
			
		</div>

