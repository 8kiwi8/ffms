<%-- 
    Document   : register
    Created on : Dec 1, 2015, 11:46:36 PM
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
        <h1>This is a register page</h1>
        <form method="post" action="<c:out value="${pageContext.servletContext.contextPath}"/>/RegisterServlet">
            <label>Name</label>
            <input name="name">
            <label>username</label>
            <input name="username">
            <label>Password</label>
            <input name="password">
            <button type="submit">Submit</button>
        </form>
    </body>
</html>
