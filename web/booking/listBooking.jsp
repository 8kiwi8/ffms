<%-- 
    Document   : listBooking
    Created on : Dec 4, 2015, 8:23:09 PM
    Author     : kingw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This is Booking List</h1>
        <table>
            <thead>
                <tr>
                    <td>Booking ID</td>
                    <td>Booked Space</td>
                    <td>Booker</td>
                    <td>Start Time</td>
                    <td>End Time</td>
                    <td>Remark</td>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${bookings}" var="booking">
                <tr>
                    <td>${booking.bid}</td>
                    <td>${booking.space.name}</td>
                    <td>${booking.user.name}</td>
                    <td>${booking.start}</td>
                    <td>${booking.end}</td>
                    <td>${booking.remark}</td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
