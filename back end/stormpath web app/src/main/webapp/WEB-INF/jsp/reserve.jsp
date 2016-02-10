<%@ page session="false"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:page>
    <jsp:attribute name="title">Reserve</jsp:attribute>
	<jsp:body>
        <h1>Reservations</h1>

        <iframe src="https://calendar.google.com/calendar/embed?showTitle=0&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=convergeincorporated%40gmail.com&amp;color=%23711616&amp;ctz=America%2FLos_Angeles" style="border-width:0" width="1000" height="600" frameborder="0" scrolling="no"></iframe>

        <form method="post" class="bs-example form-horizontal" action="${pageContext.request.contextPath}/reserved">
            <div class="form-group">
                <label for="startDate" class="col-md-1 control-label">Dates</label>

                <div class="col-md-3">
                    <input type="text" class="form-control" id="startDate" name="startDate" placeholder="mm/dd/yyyy"
                           value="${!empty account.customData['startDate'] ? account.customData['startDate'] : ''}">
                </div>
               	<div class="col-md-3">
                    <input type="text" class="form-control" id="endDate" name="endDate" placeholder="mm/dd/yyyy"
                           value="${!empty account.customData['endDate'] ? account.customData['endDate'] : ''}">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-1 col-md-offset-1">
                    <button type="submit" class="btn btn-primary">Reserve</button>
                </div>
            </div>
        </form>
	</jsp:body>
</t:page>