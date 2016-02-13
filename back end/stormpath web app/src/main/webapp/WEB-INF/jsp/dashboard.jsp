<%@ page session="false"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<link rel="stylesheet" type="text/css" href="..\..\assets\css\dashboardstyle.css">
</head>
<t:page>
    <jsp:attribute name="title">Dashboard</jsp:attribute>
    <jsp:body>
        <div class="dashboard">
            <div class="row">
                <div class="col-md-12">
                        <h1>Dashboard</h1>

                        <br/>
                        <br/>
                    <div class="jumbotron">
                        <div class="container">
                            <p>Welcome, <span class="data">${account.givenName}</span>!</p>

                                <p>This page displays some of your account information and your reservations.</p>

                                <p>To make a reservation, click on the tab in the navigation bar.</p>
                                <br/>
                                <br/>

                                <p>Your email: <span class="data">${account.email}</span></p>

                                <p>Your reservations: 
                                
                                    <c:choose>
                                        <c:when test="${!empty account.customData['startDate']}"><span class="data">${account.customData['servicePackage']}</span> from <span class="data">${account.customData['startDate']}</span> to <span class="data">${account.customData['endDate']}</span></c:when>
                                        <c:otherwise>You haven't made a reservation yet!</c:otherwise>
                                    </c:choose>
                                </span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>11
        </div>
    </jsp:body>
</t:page>