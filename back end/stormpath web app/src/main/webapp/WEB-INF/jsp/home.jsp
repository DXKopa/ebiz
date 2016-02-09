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
                <a href="#">Reserve your event now.</a>
          </div>
        </div>
        <div class="neighborhood-guides">
	        <div class="container">
                <div class="row">
                 <div class="col-md-3">
    	                <h2>Features</h2>
    	                <p>Features include:</p>
                    </div>
    	            <div class="col-md-3">
    	                <div class="thumbnail">
    	                    <img src="https://pixabay.com/static/uploads/photo/2015/09/13/15/05/festival-938253_960_720.jpg">
    	                </div>
    	            </div>
    	         </div>-s
    	    </div>
        </div>
        <div class="learn-more">
    	    <div class="container">
            	        <div class="row">
            	    	    <div class="col-md-4">
            	                <div>
            		    	        <h3>Travel</h3>
            			            <p>From apartments and rooms to treehouses and boats: stay in unique spaces in 192 countries.</p>
            			            <p><a href="#">See how to travel on Airbnb</a></p>
            	                </div>
                		        <div class="col-md-4">
                			        <h3>Host</h3>
                			        <p>Renting out your unused space could pay your bills or fund your next vacation.</p>
                			        <p><a href="#">Learn more about hosting</a></p>
                		        </div>
            		    <div class="col-md-4">
            			    <h3>Trust and Safety</h3>
            			    <p>From Verified ID to our worldwide customer support team, we've got your back.</p>
            			    <p><a href="#">Learn about trust at Airbnb</a></p>
            			</div>
                    </div>
                </div>
            </div>
        </div>

        <div id="container">
            <header>
                <h1>Banner</h1>
                <p>Pictures</p>
            </header>
        </div>
        
        <!-- Each image is 350px by 233px -->
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
        </div>
    </jsp:body>
</t:page>
