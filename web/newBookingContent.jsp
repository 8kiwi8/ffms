<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    // yyyy-mm-dd
    String dateOfBooking = request.getParameter("date");
    
    String dd = dateOfBooking.substring(8, 10);
    String mm = dateOfBooking.substring(5, 7);
    String yyyy = dateOfBooking.substring(0, 4);
    
%>

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

<div class="row">
    
    <div class="col-xs-4">
        
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-body">
                    <form class="form-inline" method="get">
                        <div class="form-group">
                            <label for="bookingDate">Date: </label>
                            <input type="date" name="date" id="bookingDate" class="form-control" >
                        </div>

                        <button type="submit" class="btn btn-default" style="margin-left: 20px;">Submit</button>
                    </form>
                </div>
            </div>
            
            <div class="panel panel-default">
                <div class="panel-body">
                    <strong>Selected Date:</strong> <%=dd%>/<%=mm%>/<%=yyyy%>
                </div>
            </div>
        </div>
    </div>
    

    <div class="col-xs-8">
        <div class="panel panel-default">
            <table class="table table-hover table-bordered table-condensed">
                <thead>
                    <tr>
                        <th colspan="2">Time slot</th>
                    </tr>
                </thead>
                
                <tr>
                    <td>08.00am - 09.00am</td>
                    <td>
                        <div class="text-center">
                            <a class="btn btn-primary btn-xs" href="#" role="button" style="width:90px;">Book this time</a>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td>09.00am - 10.00am</td>
                    <td>
                        <div class="text-center">
                            <a class="btn btn-danger btn-xs" href="#" role="button" disabled="disabled" style="width:90px;">Booked</a>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td>10.00am - 11.00am</td>
                    <td>
                        <div class="text-center">
                            <a class="btn btn-primary btn-xs" href="#" role="button" style="width:90px;">Book this time</a>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td>11.00am - 12.00pm</td>
                    <td>
                        <div class="text-center">
                            <a class="btn btn-primary btn-xs" href="#" role="button" style="width:90px;">Book this time</a>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>12.00pm - 01.00pm</td>
                    <td>
                        <div class="text-center">
                            <a class="btn btn-primary btn-xs" href="#" role="button" style="width:90px;">Book this time</a>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td>01.00pm - 02.00pm</td>
                    <td>
                        <div class="text-center">
                            <a class="btn btn-primary btn-xs" href="#" role="button" style="width:90px;">Book this time</a>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td>02.00pm - 03.00pm</td>
                    <td>
                        <div class="text-center">
                            <a class="btn btn-primary btn-xs" href="#" role="button" style="width:90px;">Book this time</a>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td>03.00pm - 04.00pm</td>
                    <td>
                        <div class="text-center">
                            <a class="btn btn-primary btn-xs" href="#" role="button" style="width:90px;">Book this time</a>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td>04.00pm - 05.00pm</td>
                    <td>
                        <div class="text-center">
                            <a class="btn btn-primary btn-xs" href="#" role="button" style="width:90px;">Book this time</a>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td>05.00pm - 06.00pm</td>
                    <td>
                        <div class="text-center">
                            <a class="btn btn-primary btn-xs" href="#" role="button" style="width:90px;">Book this time</a>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td>06.00pm - 07.00pm</td>
                    <td>
                        <div class="text-center">
                            <a class="btn btn-primary btn-xs" href="#" role="button" style="width:90px;">Book this time</a>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td>07.00pm - 08.00pm</td>
                    <td>
                        <div class="text-center">
                            <a class="btn btn-primary btn-xs" href="#" role="button" style="width:90px;">Book this time</a>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td>08.00pm - 09.00pm</td>
                    <td>
                        <div class="text-center">
                            <a class="btn btn-primary btn-xs" href="#" role="button" style="width:90px;">Book this time</a>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td>09.00pm - 10.00pm</td>
                    <td>
                        <div class="text-center">
                            <a class="btn btn-primary btn-xs" href="#" role="button" style="width:90px;">Book this time</a>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td>10.00pm - 11.00pm</td>
                    <td>
                        <div class="text-center">
                            <a class="btn btn-primary btn-xs" href="#" role="button" style="width:90px;">Book this time</a>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td>11.00pm - 12.00am</td>
                    <td>
                        <div class="text-center">
                            <a class="btn btn-primary btn-xs" href="#" role="button" style="width:90px;">Book this time</a>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    
    
</div>