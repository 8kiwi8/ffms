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
                        <% if (pageName.equals("index.jsp")||pageName.equals("adminIndex.jsp")) { %>
                        <li class="active"><a href="${context}/<%
                            
                            if(userLevel!=null){
                                if(userLevel.equalsIgnoreCase("1")){
                                    out.println("adminIndex.jsp");
                                }
                                else
                                    out.println("index.jsp");
                            }
                            else
                                    out.println("index.jsp");
                            %>">Home <span class="sr-only">(current)</span></a></li>
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
                            <% if (isLoggedIn) { %>
                                 <button type="submit" class="btn btn-primary navbar-btn" style="margin-right:7px;"
                                    onclick="window.location.href = '${pageContext.servletContext.contextPath}/user/profile.jsp'">
                                       <span class="glyphicon glyphicon-user" aria-hidden="true" style="padding-right: 10px;"></span>
                                       <% out.println(userName); %>
                                </button>
                            <% } else { %>
                                <button type="submit" class="btn btn-primary navbar-btn" style="margin-right:7px;"
                                        data-toggle='modal' data-target='#mymodal'>
                                       Login
                                </button>
                            <% } %>
                        </li>
                        
                        <% if (isLoggedIn) { %>
                            <li>
                            <button type="submit" class="btn btn-primary navbar-btn"style="margin-right:7px;"
                                    onclick="window.location.href = '${pageContext.servletContext.contextPath}/LogoutServlet'">Logout</button>                           </button>
                            </li>
                        <% } %>
                        
                    </ul>
                </div>
            </nav>
                            
            <div class="modal fade" id="mymodal" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">Login</h4>
                        </div>
                        
                        <form data-toggle="validator" role="form" method="post" action="<c:out value="${pageContext.servletContext.contextPath}"/>/LoginServlet">	
                            <div class="modal-body">
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
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                <a class="btn btn-success" href="${pageContext.servletContext.contextPath}/user/register.jsp" role="button">Sign Up</a>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                            
                            
                        </form>
                    </div>
                </div>
            </div>
                            
        <jsp:include page="${param.content}.jsp"/>
    </div>
</body>
</html>