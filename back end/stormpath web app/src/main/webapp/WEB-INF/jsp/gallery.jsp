<%@ page session="false"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<link  href="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet"> <!-- 3 KB -->
	<script src="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script> <!-- 16 KB -->
</head>

<t:page>
	<jsp:body>
		<div class="fotorama"
			data-width="100%"
       		data-height="93%"
       		data-fit="cover"
       		data-allowfullscreen="native"

       		data-nav="thumbs"
       		data-thumbwidth="72"
       		data-thumbheight="56"

       		data-trackpad="true"
       		data-keyboard="true"

       		data-autoplay="3000"
       		data-stopautoplayontouch="false"
       		
       		data-loop="true">
  			<img src="http://s.fotorama.io/1.jpg">
  			<img src="http://s.fotorama.io/2.jpg">
  			<img src="http://s.fotorama.io/3.jpg">
		</div>
	</jsp:body>
</t:page>