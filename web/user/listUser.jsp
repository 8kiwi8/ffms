<%-- 
    Document   : listUser
    Created on : Dec 3, 2015, 8:43:01 PM
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
        <h1>This is User List</h1>
        <table>
            <thead>
                <tr>
                    <td>Name</td>
                    <td>Username</td>
                    <td>Password</td>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${users}" var="user">
                <tr>
                    <td>${user.name}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
