<%@ page session="false"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:page>
	<jsp:attribute name="title">Reserved</jsp:attribute>
	<jsp:body>
		<h2>Thanks for reserving!</h2>
		   	<p>Dates: <span class="data">${account.customData['startDate']}</span> to <span class="data">${account.customData['endDate']}</span></p>
	</jsp:body>
</t:page>