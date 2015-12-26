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

                        <button type="submit" class="btn btn-primary pull-right">Submit</button>
                    </form>
                </div>
            </div>
            
            <div class="panel panel-default">
                <div class="panel-body">
                    <strong>Selected Date:</strong><br>
                    12/2/2016
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
                        <th><div class="text-center">10AM</div></th>
                        <th><div class="text-center">11AM</div></th>
                        <th><div class="text-center">12PM</div></th>
                        <th><div class="text-center">1PM</div></th>
                        <th><div class="text-center">2PM</div></th>
                        <th><div class="text-center">3PM</div></th>
                        <th><div class="text-center">4PM</div></th>
                        <th><div class="text-center">5PM</div></th>
                        <th><div class="text-center">6PM</div></th>
                        <th><div class="text-center">7PM</div></th>
                        <th><div class="text-center">8PM</div></th>
                        <th><div class="text-center">9PM</div></th>
                        <th><div class="text-center">10PM</div></th>
                        <th><div class="text-center">11PM</div></th>
                    </tr>
                </thead>

                <tr>
                    <td><div class="text-center">1</div></td>
                    <% if (10 timeslot exists for court 1 in table booking) { %>
                        <td class="danger"></td>
                    <% } else { %>
                        <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="10"></div></td>
                    <% } %>
                    <td class="danger"></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="12"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="13"></div></td>
                    <td class="danger"></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="15"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="16"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="17"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="18"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="19"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="20"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="21"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="22"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="23"></div></td>
                </tr>

                <tr>
                    <td><div class="text-center">2</div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="210"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="211"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="212"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="213"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="214"></div></td>
                    <td class="danger"></td>
                    <td class="danger"></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="217"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="218"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="219"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="220"></div></td>
                    <td class="danger"></td>
                    <td class="danger"></td>
                    <td class="danger"></td>
                </tr>

                <tr>
                    <td><div class="text-center">3</div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="310"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="311"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="312"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="313"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="314"></div></td>
                    <td class="danger"></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="316"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="317"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="318"></div></td>
                    <td class="danger"></td>
                    <td class="danger"></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="321"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="322"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="323"></div></td>
                </tr>

                <tr>
                    <td><div class="text-center">4</div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="410"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="411"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="412"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="413"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="414"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="415"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="416"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="417"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="418"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="419"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="420"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="421"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="422"></div></td>
                    <td class="success"><div class="text-center"><input type="radio" name="selectedTime" value="423"></div></td>
                </tr>

            </table>
        </div>

        <div class="panel panel-default">
            <div class="panel-body">
                <p class="pull-left">* A selection represents 1 hour of booked time</p>
                <input class="btn btn-success pull-right" type="submit" value="Submit">
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