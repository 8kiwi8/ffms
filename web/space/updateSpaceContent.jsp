<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
            	<div class="col-xs-3"></div>
                <div class="table-responsive col-xs-6" >
                    <h4> Update Space </h4>
                	<form id="addSpaceForm" method="post" action="<c:out value="${pageContext.servletContext.contextPath}"/>/UpdateSpaceServlet">   <!--TO DO add Variables2-->
				 <div class="form-group">
				    <label for="inputName" class="control-label">Name</label>
				   	 <input type="text" class="form-control" id="inputName" placeholder="Grass court" required>
				 </div>
                                 <div class="form-group">
				    <label for="inputName" class="control-label">Descriptions</label>
				   	 <input type="textarea" class="form-control" id="inputName" placeholder="Size, further details, condition" required>
				 </div>
                                 <div class="form-group">
				    <label for="inputName" class="control-label">Price</label>
				   	 <input type="textarea" class="form-control" id="inputName" placeholder="RM50" required>
				 </div>
<!--                                 <div class="form-group">
                                    <label for="exampleInputFile">Upload Picture</label>
                                    <input type="file" id="exampleInputFile">
                                    <p class="help-block">Example block-level help text here.</p>
                                 </div>-->
                            
				
			        <div>
			            <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
			</form>
		</div>
		<div class="col-xs-3"></div>
</div>
			

	