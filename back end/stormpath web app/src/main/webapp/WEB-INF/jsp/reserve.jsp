<%@ page session="false"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:page>
    <jsp:attribute name="title">Reserve</jsp:attribute>
	  <jsp:body>
        <h1>Reservations</h1><br>

        <iframe src="https://calendar.google.com/calendar/embed?showTitle=0&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=convergeincorporated%40gmail.com&amp;color=%23711616&amp;ctz=America%2FLos_Angeles" style="border-width:0" width="1000" height="600" frameborder="0" scrolling="no"></iframe>

        <form method="post" class="form-horizontal" role="form" action="${pageContext.request.contextPath}/reserved">
            <br><h3>Reservation Information</h3><br>
            <h4>Dates</h4>
            <p>If you'd only like to book one day, simply enter the same day for both 'Start' and 'End'.</p>
            <div class="form-group">
                <label for="startDate" class="col-md-1 control-label">Start</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="startDate" name="startDate" placeholder="mm/dd/yyyy" required>
                </div>
                <label for="endDate" class="col-md-1 control-label">End</label>
                <div class="col-md-2">
                  <input type="text" class="form-control" id="endDate" name="endDate" placeholder="mm/dd/yyyy" required>
                </div>
            </div>

            
            <br><h4>Service Package</h4>
            <div class="form-group">
            	<div class="col-md-4">
            		<label class="control-label"><input type="radio" id="servicePackage" name="servicePackage" value="gold" required> Gold</label> 
            	</div>
            	<div class="col-md-4">
      					<label class="control-label"><input type="radio" id="servicePackage" name="servicePackage" value="platinum"> Platinum</label>
      				</div>
      			</div><br>

  			    
          	<h3>Billing Information</h3><br>
            <div class="form-group">
            	  <label class="control-label col-md-2" for="phone">Phone</label>
                <div class="col-md-2">
              		<input type="text" class="form-control" id="phone" name="phone" placeholder="(123) 456-7890" required>
              	</div>
            </div>

            <div class="form-group">
              <label class="control-label col-md-2" for="address">Address</label>
                <div class="col-md-2">
                  <input type="text" class="form-control" id="address" name="address" required>
                </div>

              <label class="control-label col-md-1" for="city">City</label>
              <div class="col-md-2">
                <input type="text" class="form-control" id="city" name="address" required>
              </div>

              <label class="control-label col-md-1" for="state">State</label>
              <div class="col-md-1">
                <input type="text" class="form-control" id="state" name="state" required>
              </div>
            </div>

            <div class="form-group">
              <label class="control-label col-md-2" for="cardNum">Credit Card Number</label>
              <div class="col-md-3">
                <input type="text" class="form-control" id="cardNum" name="cardNum" placeholder="•••• •••• •••• ••••" required>
              </div>

              <label class="control-label col-md-1" for="cardType">Card Type</label>
              <div class="col-md-1">
                <input type="radio" id="cardType" name="cardType" value="visa" required> <img src="..\..\assets\png\visa.png" alt="Visa">
              </div>
              <div class="col-md-1">
                <input type="radio" id="cardType" name="cardType" value="amex"> <img src="..\..\assets\png\amex.png" alt="American Express">
              </div>
              <div class="col-md-1">
                <input type="radio" id="cardType" name="cardType" value="mastercard"> <img src="..\..\assets\png\mastercard.png" alt="MasterCard">
              </div>
              <div class="col-md-1">
                <input type="radio" id="cardType" name="cardType" value="discover"> <img src="..\..\assets\png\discover.png" alt="Discover">
              </div>
            </div>

            <div class="form-group">
              <label class="control-label col-md-2" for="securityCode">Security Code</label>
              <div class="col-md-1">
                <input type="text" class="form-control" id="securityCode" name="securityCode" required>
              </div>

              <label class="control-label col-md-2" for="expiry">Expiry Date</label>
              <div class="col-md-1">
                <input type="text" class="form-control" id="expiry" name="expiry"  placeholder="mm/yy" required>
              </div>
  			    </div><br>

            <div class="form-group">
                <div class="col-md-offset-2 col-md-1">
                    <button type="submit" class="btn btn-primary">Reserve My Event</button>
                </div>
            </div>
        </form>
	</jsp:body>
</t:page>