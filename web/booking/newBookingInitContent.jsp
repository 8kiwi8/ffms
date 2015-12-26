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
                    None selected
                </div>
            </div>
                
            
        </div>
    </div>
    

    <div class="col-xs-10">
        <div class="panel panel-default">
            <h1 class="text-center" style="margin-top: 62px; margin-bottom: 62px;">No searched date</h1>
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