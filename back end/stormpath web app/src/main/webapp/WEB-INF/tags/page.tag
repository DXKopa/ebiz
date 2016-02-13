<%@tag description="Default Page template" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@attribute name="title" required="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Converge Banquet Halls</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha256-7s5uDGW3AHqw6xtJmNNtr+OBRJUlgkNJEo78P4b0yRw= sha512-nNo+yCHEyn0smMxSswnf/OnX6/KwJuZTlNZBjauKhTK0c+zT+q5JOCx0UFhXQ6rJR9jg6Es8gPuD2uZcYDLqSw==" crossorigin="anonymous">
    <link href="${pageContext.request.contextPath}/assets/css/template styles.css" rel="stylesheet">
    <%-- <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" --%>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha256-KXn5puMvxCw+dAYznun+drMdG1IFl3agK0p/pqT9KAo= sha512-2e8qq0ETcfWRI4HJBzQiA3UoyFk6tbNyG+qSaIBZLyW9Xf3sWZHN/lxe9fTh1U45DpPf07yj94KsUHHWe4Yk1A==" crossorigin="anonymous"></script>
</head>

<body>
    <div class="container">

        <div class="header">

            <ul class="nav nav-pills nav-justified">
                <c:set var="uri" value="${requestScope['javax.servlet.forward.request_uri']}"/>
                <li<c:if test="${fn:endsWith(uri,'/')}"> class="active"</c:if>><a href="${pageContext.request.contextPath}/">Home</a></li>
                <c:choose>
                    <c:when test="${!empty account}">
                        <li<c:choose><c:when test="${fn:endsWith(uri,'reserve')}"> class="active"</c:when><c:when test="${fn:endsWith(uri,'reserved')}"> class="active"</c:when></c:choose>><a href="${pageContext.request.contextPath}/reserve">Reserve</a></li>
                    </c:when>
                    <c:otherwise>
                        <li<c:if test="${fn:endsWith(uri,'login')}"> class="active"</c:if>><a href="${pageContext.request.contextPath}/login">Reserve</a></li>
                    </c:otherwise>
                </c:choose>
                <li<c:if test="${fn:endsWith(uri,'gallery')}"> class="active"</c:if>><a href="${pageContext.request.contextPath}/gallery">Gallery</a></li>
                <li<c:if test="${fn:endsWith(uri,'about')}"> class="active"</c:if>><a href="${pageContext.request.contextPath}/about">About</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Services <span class="caret"></span></a>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                        <li><a href="#">Weddings</a></li>
                        <li><a href="#">Businesses</a></li>
                        <li><a href="#">Celebrations</a></li>
                    </ul>
                </li>
                <%-- Change upper right context menu depending on if the user is logged in or not: --%>
                <c:choose>
                    <c:when test="${!empty account}">
                        <li<c:if test="${fn:endsWith(uri,'dashboard')}"> class="active"</c:if>><a href="${pageContext.request.contextPath}/dashboard">My Account</a></li>
                        <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
                    </c:when>
                    <c:otherwise>
                        <li<c:if test="${fn:endsWith(uri,'login')}"> class="active"</c:if>><a href="${pageContext.request.contextPath}/login">Login</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>

        <jsp:doBody/>

    </div>
</body>
</html>