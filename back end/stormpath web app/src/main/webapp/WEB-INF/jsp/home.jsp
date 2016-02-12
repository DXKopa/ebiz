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

        <!--
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="item active">
              <img class="first-slide" src="...\..\assets\png\HomePage1.jpg" alt="First slide">
              <div class="container">
                <div class="carousel-caption">
                  <h1>Weddings, Meetings, Anything.</h1>
                  <p><a class="btn btn-lg btn-primary" href="${pageContext.request.contextPath}/login" role="button">Reserve Your Event Now</a></p>
                </div>
              </div>
            </div>
            <div class="item">
              <img class="second-slide" src="...\..\assets\png\HomePage2.jpg" alt="Second slide">
              <div class="container">
                <div class="carousel-caption">
                  <h1>Another example headline.</h1>
                  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                </div>
              </div>
            </div>
            <div class="item">
              <img class="third-slide" src="...\..\assets\png\HomePage3.jpg" alt="Third slide">
              <div class="container">
                <div class="carousel-caption">
                  <h1>One more for good measure.</h1>
                  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                </div>
              </div>
            </div>
          </div>
          <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
        -->
        
      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">Featuring our premium, sophisticated venues and services</h2>
          <br><p class="lead">Come to Converge Banquet Halls today to enjoy our luxurious dining halls and expansive venues. We offer state-of-the art projection and sound systems for all your purposes.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="...\..\assets\png\HomePage1.jpg" alt="Generic placeholder image" width="809" height="500">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading">Experience the finest dining from world-class chefs</h2>
          <br><p class="lead">At our award-winning banquet halls, you can enjoy fresh, high quality food — including our variety of gourmet steaks, fresh seafood and finest selection of wines.</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" src="...\..\assets\png\HomePage2.jpg" alt="Generic placeholder image" width="809" height="500">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">A variety of packages to suit your every need</h2>
          <br><p class="lead">Whether you’re looking for a formal environment or a more exciting dynamic, our specialized packages will be able to accommodate your needs flawlessly.</p>
        </div>
        <div class="col-md-5">
           <img class="featurette-image img-responsive center-block" src="...\..\assets\png\HomePage3.jpg" alt="Generic placeholder image" width="809" height="500">
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

        <p class="pull-right"><a href="#">Back to top</a></p>
    
    </jsp:body>
</t:page>
