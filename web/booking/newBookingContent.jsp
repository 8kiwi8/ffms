<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
    
    <div class="col-xs-2">
        
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-body">
                    <form method="get">
                        <div class="form-group">
                            <label for="bookingDate">Date: </label>
                            <input type="date" name="date" id="bookingDate" class="form-control" >
                        </div>

                        <button type="submit" class="btn btn-default pull-right">Submit</button>
                    </form>
                </div>
            </div>
            
            <div class="panel panel-default">
                <div class="panel-body">
                    <strong>Selected Date:</strong>
                </div>
            </div>
                
            
        </div>
    </div>
    

    <div class="col-xs-10">
        <div class="panel panel-default">
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
                <c:forEach items="${spaces}" var="space">
                    <tr>
                    <td><div class="text-center">${space.name}</div></td>
                    <c:forEach items="${times}" var="time">
                        <c:forEach items="${bookings}" var="booking">
                            <c:if test="%{booking.tid == time.tid && booking.sid == space.sid}">
                                <c:set var="found" value="true"/>
                            </c:if>
                        </c:forEach>
                        <c:choose>
                            <c:when test="${found.equals("true")}">
                                <td class="danger"></td>
                            </c:when>
                            <c:otherwise>
                                <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="${space.sid}${time.tid}"></div></td>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

        <div class="panel panel-default">
            <div class="panel-body">
                <p class="pull-left">* A selection represents 1 hour of booked time</p>
                <input class="btn btn-default pull-right" type="submit" value="Submit">
            </div>
        </div>

    </div>
                
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
    </script>
</div>