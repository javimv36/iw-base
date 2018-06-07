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
                    <h1 class="page-header">Panel principal</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
                <div class="row">
                	<div class="col-lg-8">
                       	<%@ include file="ver_ruta.jsp"%>
                    </div>
                    <!-- /.col-lg-8 (nested) -->
                    <div class="col-lg-4">
	  					<%@ include file="mapa-ruta.jsp"%>
	  					
	  					<!-- Scripts necesarios para generar QRs --> 	
					  	<script src="${s}/js/qrcode.min.js"></script>
					  	<script type="text/javascript">
					  		buscaDireccionDiv();
					  	</script>
	  					
              		</div>
	           	<!-- /.col-lg-4 -->
	       	</div>
	        <!-- /.row -->
	   	</div>
	   	<!-- /#page-wrapper -->
	   	
	   	<script type="text/javascript" src="${s}/js/pdf/libs/png_support/zlib.js"></script>
					<script type="text/javascript" src="${s}/js/pdf/libs/png_support/png.js"></script>
					<script type="text/javascript" src="${s}/js/pdf/jspdf.min.js"></script>
					<script type="text/javascript" src="${s}/js/pdf/plugins/addimage.js"></script>
					<script type="text/javascript" src="${s}/js/pdf/plugins/png_support.js"></script>
					<script type="text/javascript">

					var doc = new jsPDF();
					var specialElementHandlers = {
					    '#editor': function (element, renderer) {
					        return true;
					    }
					};
					
					$('#cmd').click(function () {   
						var img = new Image;
					//	var mapas = $('.map-img');
						var tituloRuta=document.getElementsByClassName("page-header")[0].innerText;
						
						var eventos = document.getElementsByClassName("evento");
						doc.setFontSize(28);
						doc.text(50,80, 'Informe de ruta OnGo');
						doc.text(50, 100, tituloRuta);
						for (var i=0; i< eventos.length; i++){
							doc.addPage();
							doc.setFontSize(22);
							doc.text(20, 30, 'Evento OnGo');
							imgData = eventos[i].children[1].children[1].children[1].children[1].attributes["src"].nodeValue;
						   	var direccion=eventos[i].children[1].children[0].children[0].innerText;
						   	var hora=eventos[i].children[1].children[0].children[1].innerText;
						   	var info=eventos[i].children[1].children[1].children[0].innerText;
						   	
							doc.text(20,50, direccion);
						   	doc.setFontSize(14);
						 	doc.text(20,80	, info);
						   	doc.text(20,100, 'Importe:' + '€');
						   	doc.text(20, 120, 'Hora: '+ hora);
						   	doc.text(20, 140, 'Notas adicionales:');
						   	
						   	doc.addImage(imgData, 'PNG', 70,200,80,80);
						   	
					    }
						
						var visitas = document.getElementsByClassName("visita");
						for (var i=0; i< visitas.length; i++){
							doc.addPage();
							doc.setFontSize(22);
							doc.text(20, 30, 'Visita OnGo');
						   	imgData = visitas[i].children[1].children[1].children[4].children[1].attributes["src"].nodeValue;
						   	var asunto = visitas[i].children[1].children[1].children[0].innerText;
						   	var importe = visitas[i].children[1].children[1].children[1].innerText;
						  	var hora = visitas[i].children[1].children[0].children[1].innerText;
						   	var direccion= visitas[i].children[1].children[0].children[0].innerText;
						   	
						//   	var mapaData = mapas[0].children[i].attributes["src"].nodeValue;
						//   	console.log("url de la imagen: " + mapaData + "con datos: ");
						    doc.text(20,50, direccion);
						    doc.setFontSize(14);
						   	doc.text(20,80	, asunto);
						   	doc.text(20,100, 'Importe:' + importe + '€');
						   	doc.text(20, 120, 'Hora: '+ hora);
						   	doc.text(20, 140, 'Notas adicionales:');
						   	doc.addImage(imgData, 'PNG', 70,200,80,80);
						}
						
					    doc.save(tituloRuta +'.pdf');
					});
					
					
					</script>
	    <%@ include file="../jspf/pie.jspf"%>