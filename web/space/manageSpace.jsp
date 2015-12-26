<!doctype html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="spaces" value="${spaces}" scope="request" />
<jsp:include page="/template.jsp">
	<jsp:param name="content" value="/space/manageSpaceContent"/>
	<jsp:param name="title" value="add space"/>
</jsp:include>