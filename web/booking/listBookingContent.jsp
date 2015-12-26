<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="row">
            	<div class="col-xs-2"></div>
                <div class="table-responsive col-xs-8" >
                	<h4> All user transactions </h4>
                    <table class="table">
                    	<tr> 
                    		<td>Booking ID</td>
                                <td>Booking Date</td>
                                <td>Booked Space</td>
                                <td>Booker</td>
                                <td>Price </td>
                                <td>Remark</td>
                                <td>Status</td>
                                <td> Confirmation</td>
                                
                                
                    	</tr>
                        <c:forEach items="${bookings}" var="booking">
                    	<tr> 
                    		<td>${booking.bid}</td>
                                <td>${booking.date}</td>
                                <td>${booking.space.name}</td>
                                <td>${booking.user.name}</td>
                                <td>${booking.price}</td>
                                <td>${booking.remark}</td>
                                <td>inactive</td>
                    		<td> <button type="button" class="btn btn-primary btn-sm">Approve</button>
                                    <button type="button" class="btn btn-primary btn-sm">Reject</button></td>
                                
                    	</tr>
                        </c:forEach>

    
                    </table>
			    </div>
			    <div class="col-xs-2"></div>
</div>
			

				<!-- Controls -->
				
			
		