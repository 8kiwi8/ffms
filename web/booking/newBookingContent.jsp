<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String selectedDate = "";
    
    if (request.getParameter("date") != null)
        selectedDate = request.getParameter("date");
%>


    
    <div class="col-xs-12 col-sm-3 col-lg-2">
        
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
    

    <div class="col-xs-12 col-sm-9 col-lg-10">
        <c:if test="${message != null}">
            <div class="alert alert-info alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong>${message}</strong>
                <c:remove var="message"/>
            </div>
        </c:if>
        <c:if test="${bookingError != null}">
            <div class="alert alert-danger alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong>${bookingError}</strong>
                <c:remove var="bookingError"/>
            </div>
        </c:if>
        <div class="panel panel-default">
            <c:choose>
                <c:when test="${empty param.date}">
                    <h1 class="text-center" style="margin-top: 62px; margin-bottom: 62px;">No searched date</h1>
                </c:when>
                
                <c:otherwise>
                    <div class="table-responsive">
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
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
        
        <div class="alert alert-info" role="alert">
            <span class="glyphicon glyphicon-info-sign" aria-hidden="true" style="margin-right: 7px; vertical-align: -2px;"></span>
            A selection represents 1 hour of booked time
        </div>
        <div class="form-group">
            <input class="btn btn-lg btn-block btn-success" type="submit" value="Submit" form="selectedTimeSlot">
        </div>
        
                
        <c:if test="${message != null}">
            <div class="alert alert-success alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <span class="glyphicon glyphicon-ok-circle" aria-hidden="true" style="margin-right: 7px; vertical-align: -2px;"></span>
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
