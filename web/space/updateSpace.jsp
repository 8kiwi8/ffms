<!doctype html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="spaces" value="${space}" scope="request" />
<jsp:include page="/template.jsp">
	<jsp:param name="content" value="/space/updateSpaceContent"/>
	<jsp:param name="title" value="update space"/>
</jsp:include>