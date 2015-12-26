<%-- 
    Document   : leftNavBar
    Created on : 27-Dec-2015, 00:00:11
    Author     : Ahmad
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- BELOW SETS contextPath as "context" VAR FOR EASIER USAGE -->
<c:set var="context" value="${pageContext.request.contextPath}" />

<%
    String uri = request.getRequestURI();
    String pageName = uri.substring(uri.lastIndexOf("/") + 1);
    String userLevel = (String) session.getAttribute("type");
%>

<!-- START OF LEFT-ALIGNED NAVBAR OPTIONS -->

<% if (pageName.equals("index.jsp") || pageName.equals("adminIndex.jsp")) { %>
<li class="active">
    <a href="${context}/<% if (userLevel != null) {
                if (userLevel.equalsIgnoreCase("admin"))
                    out.println("adminIndex.jsp");
        } else
            out.println("index.jsp");
        %>">
    Home <span class="sr-only">(current)</span></a>
</li>

<% } else { %>
<li><a href="${context}/index.jsp">Home</a></li>
<% } %>

<% if (pageName.equals("courts.jsp")) { %>
<li class="active"><a href="${context}/courts.jsp">Courts <span class="sr-only">(current)</span></a></li>
<% } else { %>
<li><a href="${context}/courts.jsp">Courts</a></li>
<% } %>

<!-- END OF LEFT-ALIGNED NAVBAR OPTIONS -->