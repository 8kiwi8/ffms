<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="space" value="${space}" scope="request" />
<c:set var="time" value="${time}" scope="request" />
<c:set var="booking" value="${booking}" scope="request" />
<jsp:include page="/template.jsp">
	<jsp:param name="content" value="/reportContent"/>
	<jsp:param name="title" value="Report"/>
</jsp:include>