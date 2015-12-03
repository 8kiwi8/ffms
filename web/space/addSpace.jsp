<%-- 
    Document   : addSpace
    Created on : Dec 3, 2015, 6:45:20 PM
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
        <h1>This is add space page</h1>
        <form id="addSpaceForm" method="post" action="<c:out value="${pageContext.servletContext.contextPath}"/>/AddSpaceServlet">
            <label>Name</label>
            <input name="name">
            <label>Description</label>
            <textarea name="description" form="addSpaceForm"></textarea>
            <label>Pic Path Upload</label>
            <input name="picPath">
            <button type="submit">Submit</button>
        </form>
    </body>
</html>
