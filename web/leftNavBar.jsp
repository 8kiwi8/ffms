<%-- 
    Document   : leftNavBar
    Created on : 27-Dec-2015, 00:00:11
    Author     : Ahmad
--%>
<%@page import="business.dao.PageDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- BELOW SETS contextPath as "context" VAR FOR EASIER USAGE -->
<%
    PageDAO pageDAO = new PageDAO();
    pageDAO.setContextPath(request.getContextPath());
    request.setAttribute("pages", pageDAO.getPage((String) request.getSession().getAttribute("type")));
    request.setAttribute("uri", request.getRequestURI());
%>
<c:forEach items="${pages}" var="page">
    <c:choose>
        <c:when test="${page.path == uri}">
            <li class="active"><a href="${page.path}">${page.name}</a></li>
        </c:when>
        <c:otherwise>
            <li><a href="${page.path}">${page.name}</a></li>
        </c:otherwise>
    </c:choose>
</c:forEach>