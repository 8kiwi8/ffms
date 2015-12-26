<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String selectedDate = "";
    
    if (request.getParameter("date") != null)
        selectedDate = request.getParameter("date");
%>

<div class="row">
    
    <div class="col-xs-2">
        
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-body">
                    <form method="get" id="date">
                        <div class="form-group">
                            <label for="bookingDate">Date: </label>
                            <input type="date" name="date" id="bookingDate" class="form-control" >
                        </div>

                        <button type="submit" class="btn btn-primary pull-right">Submit</button>
                    </form>
                </div>
            </div>               
        </div>
    </div>
    

    <div class="col-xs-10">
        <div class="panel panel-default">
            <c:choose>
                <c:when test="${empty param.date}">
                    <h1 class="text-center" style="margin-top: 62px; margin-bottom: 62px;">No searched date</h1>
                </c:when>
                
                <c:otherwise>
                    <!-- Start TABLE -->
                    <table class="table table-hover table-bordered table-condensed">
                        <thead>
                            <tr>
                                <th><div class="text-center">Court</div></th>
                                <c:forEach items="${times}" var="time">
                                   <th><div class="text-center">${time.description}</div></th> 
                                </c:forEach>
                            </tr>
                        </thead>
                        <tbody>
                            <form action="<c:out value="${pageContext.servletContext.contextPath}"/>/NewBookingServlet" method="get" id="selectedTimeSlot">
                                <input type="hidden" name="selectedDate" value="<%=selectedDate%>">
                                <c:forEach items="${spaces}" var="space">
                                    <tr>
                                        <td><div class="text-center">${space.name}</div></td>
                                        <c:forEach items="${times}" var="time">
                                            <c:set var="found" value="false"/>
                                            <c:forEach items="${bookings}" var="booking">
                                                <c:if test="${booking.tid == time.tid && booking.sid == space.sid}">
                                                    <c:set var="found" value="true"/>
                                                </c:if>
                                            </c:forEach>
                                            <c:choose>
                                                <c:when test="${found == 'true'}">
                                                    <td class="danger"></td>
                                                </c:when>
                                                <c:otherwise>
                                                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="${space.sid}-${time.tid}"></div></td>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </tr>
                                </c:forEach>
                            </form>
                        </tbody>
                    </table>
                    <!-- End TABLE -->
                </c:otherwise>
            </c:choose>
            
            
        </div>

        <div class="panel panel-default">
            <div class="panel-body">
                <p class="pull-left">* A selection represents 1 hour of booked time</p>
                <input class="btn btn-success pull-right" type="submit" value="Submit" form="selectedTimeSlot">
                
            </div>
        </div>
        <c:if test="${message != null}">
            <div class="alert alert-danger alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong>${message}</strong>
                <c:remove var="message"/>
            </div>
        </c:if>
    </div>
    <c:choose>
        <c:when test="${not empty param.date}">
            <script>
                document.getElementById("bookingDate").setAttribute("value", "${param.date}");
            </script>
        </c:when>
        <c:otherwise>
            <script>
                var today = new Date();
                var dd = today.getDate();
                var mm = today.getMonth() + 1; //January is 0!
                var yyyy = today.getFullYear();

                if (dd < 10) {
                    dd = '0' + dd
                } 

                if (mm < 10) {
                    mm = '0' + mm
                } 

                today = yyyy + '-' + mm + '-' + dd;
                document.getElementById("bookingDate").setAttribute("value", today);
                //document.getElementById("date").submit();
            </script>
        </c:otherwise>
    </c:choose>
</div>
