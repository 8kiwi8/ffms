<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="spaces" value="${spaces}" scope="request" />
<c:set var="times" value="${times}" scope="request" />
<c:set var="bookings" value="${bookings}" scope="request" />
<jsp:include page="../template.jsp">
	<jsp:param name="content" value="/booking/newBookingContent"/>
	<jsp:param name="title" value="Book a Court"/>
</jsp:include>