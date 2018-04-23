<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/cabecera.jspf"%>
<%@ include file="../jspf/navbar.jspf"%>
       <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">${visita.getDireccion()} : ${visita.getFecha()}</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
                <div class="row">
                	<div class="col-lg-8">
                       	<%@ include file="ver_visita.jsp"%>
                    </div>
                    <!-- /.col-lg-8 (nested) -->
                    <div class="col-lg-4">
	  					<%@ include file="mapa-ruta.jsp"%>
	  					<script type="text/javascript">
	  					
	  					</script>
	  					<!-- Scripts necesarios para generar QRs --> 	
					  	<script src="${s}/js/qrcode.min.js"></script>
					  	<script type="text/javascript">
					    	
					  		buscaDireccionDiv();
					  		url=$('#direccion').attr('href');
					  		var qrs = document.getElementsByClassName("qrcode");
					   		new QRCode(qrs[0], {
						    text: 'http://google.com/maps/bylatlng?' + url,
						    width: 128,
						    height: 128,
						    colorDark : "#000000",
						    colorLight : "#ffffff",
						    correctLevel : QRCode.CorrectLevel.H
					   		});
					  	
					  	</script>
					  	<!-- Fin scripts QRs -->
              		</div>
	           	<!-- /.col-lg-4 -->
	       	</div>
	        <!-- /.row -->
	   	</div>
	   	<!-- /#page-wrapper -->
	    <%@ include file="../jspf/pie.jspf"%>