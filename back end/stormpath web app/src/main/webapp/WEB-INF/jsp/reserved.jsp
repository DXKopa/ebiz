<%@ page session="false"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<link rel="stylesheet" type="text/css" href="..\..\assets\css\reservestyle.css">
</head>
<t:page>
	<jsp:attribute name="title">Reserved</jsp:attribute>
	<jsp:body>
		<div class="jumbotron">
			<div class="container">
				<h1 id="reserveTitle">Thanks for reserving, <span class="data">${account.givenName}</span>!</h1>
				   	<p>You reserved for a <span class="data">${account.customData['servicePackage']}</span> from <span class="data">${account.customData['startDate']}</span> to <span class="data">${account.customData['endDate']}</span>.</p>
			</div>
		</div>
	</jsp:body>
</t:page>
