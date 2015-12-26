<%-- 
    Document   : template
    Created on : 08-Dec-2015, 09:33:33
    Author     : Ahmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}" />

<%
    boolean isLoggedIn = false;
    
    String uri = request.getRequestURI();
    String pageName = uri.substring(uri.lastIndexOf("/") + 1);
    String name = (String) session.getAttribute("name");
    String userLevel = (String) session.getAttribute("type");
    String userName = null;
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("type")) {
                userName = cookie.getValue();
            }
        }
    }
    
    if (userName != null)
        isLoggedIn = true;
   
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
        <script src="${context}/js/validator.js"></script>
        <script src="${context}/js/validator.min.js"></script>
        <script src="${context}/js/centeredBSmodals.js"></script>
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
                        <!-- START OF LEFT-ALIGNED NAVBAR OPTIONS -->
                        
                        <jsp:include page="leftNavBar.jsp"/>
                        
                        <!-- END OF LEFT-ALIGNED NAVBAR OPTIONS -->
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <!-- START OF RIGHT-ALIGNED NAVBAR OPTIONS -->
                        
                        <li>
                            <% if (isLoggedIn) { %>
                                 <button type="submit" class="btn btn-primary navbar-btn" style="margin-right:7px;"
                                    onclick="window.location.href = '${context}/user/profile.jsp'">
                                       <span class="glyphicon glyphicon-user" aria-hidden="true" style="padding-right: 10px;"></span>
                                       <% out.println(name); %>
                                </button>
                            <% } else { %>
                                <button type="submit" class="btn btn-primary navbar-btn" style="margin-right:7px;"
                                        data-toggle='modal' data-target='#mymodal'>
                                    <span class="glyphicon glyphicon-user" aria-hidden="true" style="padding-right: 10px;"></span>
                                    Login
                                </button>
                            <% } %>
                        </li>
                        
                        <% if (isLoggedIn) { %>
                            <li>
                            <button type="submit" class="btn btn-danger navbar-btn"style="margin-right:7px;"
                                    onclick="window.location.href = '${context}/LogoutServlet'">Logout</button>                           </button>
                            </li>
                        <% } %>
                        
                        <!-- END OF RIGHT-ALIGNED NAVBAR OPTIONS -->
                    </ul>
                </div>
            </nav>
            
            <!-- START OF LOGIN MODAL POPUP -->
            <div class="modal fade" id="mymodal" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Login</h4>
                        </div>
                        
                        <form data-toggle="validator" role="form" method="post" action="<c:out value="${pageContext.servletContext.contextPath}"/>/LoginServlet">	
                            <div class="modal-body modal-bg">
                                <div class="form-group">
                                    <label for="inputEmail" class="control-label">Email</label>
                                    <input type="email" class="form-control" id="inputEmail" name="inputEmail"  placeholder="Email Address" data-error="Bruh, that email address is invalid" required>
                                    <div class="help-block with-errors"></div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="inputPassword" class="control-label">Password</label>
                                    <div>
                                        <input type="password" data-minlength="6" class="form-control" id="inputPassword" name="inputPassword" placeholder="Password" required>
                                        <span class="help-block">Minimum of 6 characters</span>
                                    </div>
                                </div>
                                
                                <div class="alert alert-danger alert-dismissible" role="alert">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <strong>Error!</strong> Start doing some work
                                </div>
                            </div>
                            
                            <div class="modal-footer">
                                <div style="float:left;">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                </div>
                                
                                <a class="btn btn-success" href="${pageContext.servletContext.contextPath}/user/register.jsp" role="button">Sign Up</a>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- END OF LOGIN MODAL POPUP -->
                            
        <jsp:include page="${param.content}.jsp"/>
    </div>
</body>
</html>