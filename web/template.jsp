<%-- 
    Document   : template
    Created on : 08-Dec-2015, 09:33:33
    Author     : Ahmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}" />

<%
    String uri = request.getRequestURI();
    String pageName = uri.substring(uri.lastIndexOf("/")+1);
%>

<!doctype html>
<html lang="en">
	<head>
		<title>FutsalNow - ${param.title}</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
                <link href="${context}/css/bootstrap.min.css" rel="stylesheet">
		<link href="${context}/css/bootstrap-theme.min.css" rel="stylesheet">
		<link href="${context}/css/style.css" rel="stylesheet">
	</head>
	
	<body>
		<script src="${context}/js/jquery.min.js"></script>
		<script src="${context}/js/bootstrap.min.js"></script>
		
		<div class="container" id="banner">
			<img src="${context}/img/banner.png" alt="Banner" style="width:100%;">
		</div>
				
		<div class="container" id="content">			
			
			<nav class="navbar navbar-default">
                            <div class="navbar-header">
                                <!-- Hamburger Icon for mobile below -->
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-main" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>

                                <a class="navbar-brand" href="#">FN</a>
                            </div>

                            <div class="collapse navbar-collapse" id="navbar-collapse-main">
                                <ul class="nav navbar-nav">
                                    <% if (pageName.equals("index.jsp")) { %>
                                        <li class="active"><a href="${context}/index.jsp">Home <span class="sr-only">(current)</span></a></li>
                                    <% } else { %>
                                        <li><a href="${context}/index.jsp">Home</a></li>
                                    <% } %>
                                    
                                    <% if (pageName.equals("courts.jsp")) { %>
                                        <li class="active"><a href="${context}/courts.jsp">Courts <span class="sr-only">(current)</span></a></li>
                                    <% } else { %>
                                        <li><a href="${context}/courts.jsp">Courts</a></li>
                                    <% } %>
                                </ul>

                                <ul class="nav navbar-nav navbar-right">
                                    <li>
                                        <a href="#"><span class="glyphicon glyphicon-user" style="padding-right:10px;"></span>Login</a>
                                    </li>
                                </ul>
                            </div>
			</nav>
			
			<jsp:include page="${param.content}.jsp"/>
			
		</div>
	</body>
</html>