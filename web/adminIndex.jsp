<!doctype html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    
  String userLevel = (String) session.getAttribute("type");  
  if(userLevel!=null){
  if(!userLevel.equalsIgnoreCase("admin")){
   response.sendRedirect("index.jsp");
   }  
  }
  else{
  response.sendRedirect("index.jsp");
  }
%>
<jsp:include page="template.jsp">
	<jsp:param name="content" value="adminIndexContent"/>
	<jsp:param name="title" value="Futsal Everyday"/>
</jsp:include>