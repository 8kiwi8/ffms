<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="row">
            	<div class="col-xs-2"></div>
                <div class="table-responsive col-xs-8" >
                	<h4> Space Management </h4>
                        <div class="panel-body">
                    <table class="table">
                    	<tr> 
                    		<td>Name</td>
                                <td width="70%"  >Description</td>
                                <td>Price</td>
                                <td>Update</td>
                                <td>Delete</td>
                                
                    	</tr>
                        <c:forEach items="${spaces}" var="space">
                           <!--TO DO correct the variables, make activate/deactivate work -->
                    	<tr> 
                    		<td>${space.name}</td>
                                <td>${space.description}</td>
                                <td>${space.price}</td>
                                <td><a href="<c:out value="${pageContext.servletContext.contextPath}"/>/UpdateSpace?sid=${space.sid}" class="btn btn-default" role="button">Update</a></td>
                                <td><a href="<c:out value="${pageContext.servletContext.contextPath}"/>/DeleteSpace?sid=${space.sid}" class="btn btn-danger" role="button">Delete</a></td>
                    	</tr>
                        </c:forEach>

    
                    </table>
                        <div>
                            <a href="<c:out value="${pageContext.servletContext.contextPath}"/>/space/addSpace.jsp" class="btn btn-info" role="button">Add Space</a>
		        </div>
			    </div>
			    <div class="col-xs-2"></div>
			</div>
			

				<!-- Controls -->
				
			
		</div>
