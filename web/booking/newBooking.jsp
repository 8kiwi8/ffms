<%-- 
    Document   : newBooking
    Created on : Dec 3, 2015, 7:00:38 PM
    Author     : kingw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This is a new booking page</h1>
        <form id="newBookingForm" method="post" action="<c:out value="${pageContext.servletContext.contextPath}"/>/AddBookingServlet">
            <label>UID</label>
            <input name="uid">
            <label>SID</label>
            <input name="sid">
            <label>Start(dd-mm-yyyy,hh)</label>
            <input name="start">
            <label>End(dd-mm-yyyy,hh)</label>
            <input name="end">
            <label>Remark</label>
            <textarea name="remark" form="newBookingForm"></textarea>
            <button type="submit">Submit</button>
        </form>
    </body>
</html>
