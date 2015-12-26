<%-- 
    Document   : courtsContent
    Created on : 08-Dec-2015, 17:27:17
    Author     : Ahmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    int courtNum = 1;
    
    if (request.getParameter("courtNum") != null)
        courtNum = Integer.parseInt(request.getParameter("courtNum"));
%>

<div class="row"> <!-- Outer Row -->
    <div class="col-sm-6 col-md-3 ">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Available Courts</h3>
            </div>

            <div class="panel-body">
                <div class="btn-group-vertical center-block" role="group" aria-label="Court Details">
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/courts.jsp?courtNum=1" role="button">Court 1</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/courts.jsp?courtNum=2" role="button">Court 2</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/courts.jsp?courtNum=3" role="button">Court 3</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/courts.jsp?courtNum=4" role="button">Court 4</a>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Booking</h3>
            </div>

            <div class="panel-body">
                <a class="btn btn-success btn-lg btn-block" href="NewBooking" role="button">View Timeslots</a>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-md-6">
        <div class="panel panel-default">						
            <div class="panel-body">
                <% if (courtNum == 1) { %>
                    <img src="${pageContext.request.contextPath}/img/vinylfield.png" alt="Vinyl Field" class="img-responsive">
                <% } %>
                
                <% if (courtNum == 2) { %>
                    <img src="${pageContext.request.contextPath}/img/vinylfield.png" alt="Vinyl Field" class="img-responsive">
                <% } %>
                
                <% if (courtNum == 3) { %>
                    <img src="${pageContext.request.contextPath}/img/paraquette.png" alt="Vinyl Field" class="img-responsive">
                <% } %>
                
                <% if (courtNum == 4) { %>
                    <img src="${pageContext.request.contextPath}/img/futsal-turff.png" alt="Vinyl Field" class="img-responsive">
                <% } %>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-md-3">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Court Price</h3>
            </div>

            <div class="panel-body">
                <table class="table">
                    <tr>
                        <td>Court 1</td>
                        <td class="text-right">RM45</td>
                    <tr>

                    <tr>
                        <td>Court 2</td>
                        <td class="text-right">RM55</td>
                    <tr>

                    <tr>
                        <td>Court 3</td>
                        <td class="text-right">RM55</td>
                    <tr>

                    <tr>
                        <td>Court 4</td>
                        <td class="text-right">RM60</td>
                    <tr>
                </table>
            </div>
            
        </div>
    </div>
                
    <div class="col-sm-6 col-md-3">
        <div class="panel panel-default">
            
            <div class="panel-heading">
                <h3 class="panel-title">Court Details</h3>
            </div>
            
            <div class="panel-body">
                <% switch (courtNum) {
                    default:
                    case 1:
                %>
                        <p>
                            - Vinyl Futsal Field<br>
                            - Favoured field among futsal players. Suitable for performing actions like diving.<br>
                            - Also known as rubber, soft field<br>
                            - Size: 15m X 25m (width X length)<br>
                        </p>
                <%      break;
                    
                    case 2: %>
                        <p>
                            - Vinyl Futsal Field<br>
                            - Favoured field among futsal players. Suitable for performing actions like diving.<br>
                            - Also known as rubber, soft field<br>
                            - Size: 18m X 38m (width X length)<br>
                        </p>
                <%      break;
                    
                    case 3: %>
                        <p>
                            - Parquette Futsal Field<br>
                            - Popular field in Europe and Latin America<br>
                            - Made of Wood<br>
                            - Size: 16m X 27m (width X length)<br>
                        </p>
                <%      break; 
                    
                    case 4: %>
                        <p>
                            - Futsal Artificial Grass<br>
                            - Indoor soccer with outdoor feel<br>
                            - Suitable for casual games<br>
                            - Size: 16m X 27m (width X length)<br>
                        </p>
                <% } %>
            </div>
            
        </div>
    </div>
            
</div> <!-- ./Outer Row -->