<%-- 
    Document   : login
    Created on : Dec 1, 2015, 11:32:36 PM
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
        <h1>User not found</h1>
        <form method="post" action="<c:out value="${pageContext.servletContext.contextPath}"/>/LoginServlet">
            <label>Username</label>
            <input name="inputEmail">
            <label>Password</label>
            <input name="inputPassword">
            <button type="submit">Login</button>
        </form>
    </body>
</html>
