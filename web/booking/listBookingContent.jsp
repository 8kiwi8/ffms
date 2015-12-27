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
                                <td>${booking.stringDate}</td>
                                <td>${booking.space.name}</td>
                                <td>${booking.user.name}</td>
                                <td>${booking.price}</td>
                                <td>${booking.remark}</td>
                                <td>${booking.status}</td>
                    		<td><a href="<c:out value="${pageContext.servletContext.contextPath}"/>/ApproveBooking?bid=${booking.bid}" class="btn btn-info" role="button">Approve</a>
                                    <a href="<c:out value="${pageContext.servletContext.contextPath}"/>/RejectBooking?bid=${booking.bid}" class="btn btn-danger" role="button">Reject</a></td>
                                
                    	</tr>
                        </c:forEach>

    
                    </table>
			    </div>
			    <div class="col-xs-2"></div>
</div>
			

				<!-- Controls -->
				
			
		