<%-- 
    Document   : courtsContent
    Created on : 08-Dec-2015, 17:27:17
    Author     : Ahmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row"> <!-- Outer Row -->
    <div class="col-sm-4 col-md-4 ">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Booking</h3>
            </div>

            <div class="panel-body">
                <a class="btn btn-success btn-lg btn-block" href="NewBooking" role="button">Book a Court Now!</a>
            </div>
        </div>
        
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Available Courts</h3>
            </div>

            <div class="panel-body">
                <div class="btn-group-vertical center-block" role="group" aria-label="Court Details">
                    <c:forEach items="${spaces}" var="space">
                        <a class="btn btn-primary" href="${pageContext.request.contextPath}/Courts?sid=${space.sid}" role="button">${space.name} (RM${space.price})</a>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
    <c:choose>
        <c:when test="${not empty param.sid}">
            <div class="col-sm-8 col-md-8 ">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Court Details</h3>
                    </div>
                    <div class="panel-body">
                        <c:forEach items="${spaces}" var="space">
                            <c:if test="${space.sid == param.sid}">
                                ${space.description}
                            </c:if>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </c:when>
        <c:otherwise>
            <div class="col-sm-8 col-md-8 ">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h1 class="panel-title">Pick the available space!</h3>
                    </div>
                </div>
            </div>
        </c:otherwise>
    </c:choose>
</div> <!-- ./Outer Row -->