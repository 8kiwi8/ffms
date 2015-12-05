<%-- 
    Document   : listSpace
    Created on : Dec 4, 2015, 1:56:23 PM
    Author     : kingw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This is Space List</h1>
        <table>
            <thead>
                <tr>
                    <td>Name</td>
                    <td>Description</td>
                    <td>Picture</td>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${spaces}" var="space">
                <tr>
                    <td>${space.name}</td>
                    <td>${space.description}</td>
                    <td>${space.picPath}</td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
