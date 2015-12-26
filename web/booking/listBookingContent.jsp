<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="row">
            	<div class="col-xs-3"></div>
                <div class="table-responsive col-xs-6" >
                	<h4> All user transactions </h4>
                    <table class="table">
                    	<tr> 
                    		<td>Booking ID</td>
                                <td>Booking Date</td>
                                <td>Booked Space</td>
                                <td>Booker</td>
                                <td>Start Time</td>
                                <td>End Time</td>
                                <td>Price </td>
                                <td>Remark</td>
                                <td> Delete Booking?</td>
                    	</tr>
                        <c:forEach items="${bookings}" var="booking">
                    	<tr> 
                    		<td>${booking.bid}</td>
                                <td>${booking.date}</td>
                                <td>${booking.space.name}</td>
                                <td>${booking.user.name}</td>
                                <td>${booking.start}</td>
                                <td>${booking.end}</td>
                                <td>${booking.price}</td>
                                <td>${booking.remark}</td>
                    		<td> <select name="confirmation" class="form-control">
                               		<option value="Yes">Yes</option>
                               		<option selected value="No">No</option>
                    		    </select></td>
                    	</tr>
                        </c:forEach>

    
                    </table>
			    </div>
			    <div class="col-xs-3"></div>
</div>
			

				<!-- Controls -->
				
			
		