<%@ page session="false"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
<head>
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">
<head>  

<t:page>
    <jsp:attribute name="title">Welcome to Converge!</jsp:attribute>
    <jsp:body>
        <div class="jumbotron">
          <div class="container" id="banner">
                <h1>Weddings, Meetings, Anything.</h1>
                <c:choose>
                    <c:when test="${!empty account}">
                        <a href="${pageContext.request.contextPath}/reserve">Reserve your event now.</a>
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/login">Reserve your event now.</a>
                    </c:otherwise>
                </c:choose>
          </div>
        </div>
        
      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading">Oh yeah, it's that good. <span class="text-muted">See for yourself.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

        
        <!-- Each image is 350px by 233px
        <div class="photobanner">
            <img class="first" src="image-1.jpg" alt="" />
            <img src="image-2.jpg" alt="" />
            <img src="image-3.jpg" alt="" />
            <img src="image-4.jpg" alt="" />
            <img src="image-5.jpg" alt="" />
            <img src="image-6.jpg" alt="" />
            <img src="image-1.jpg" alt="" />
            <img src="image-2.jpg" alt="" />
            <img src="image-3.jpg" alt="" />
            <img src="image-4.jpg" alt="" />
        </div> -->
    
    </jsp:body>
</t:page>
