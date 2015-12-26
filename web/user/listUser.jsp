<!doctype html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="users" value="${users}" scope="request" />
<jsp:include page="/template.jsp">
	<jsp:param name="content" value="/user/listUserContent"/>
	<jsp:param name="title" value="update space"/>
</jsp:include>