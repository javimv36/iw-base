<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/cabecera.jspf"%>
<%@ include file="../jspf/navbar.jspf"%>
   <div id="content">
       <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                
                    <h1 class="page-header">Ruta ${ruta.getId()} : día ${ruta.getFecha()}</h1>
                
                </div>
                <!-- /.col-lg-12 -->
                  <button type="button" id="cmd" class="btn btn-success">Generar PDF</button>
            </div>
            <!-- /.row -->
                <div class="row">
                	<div class="col-lg-8">
                	
                       	<%@ include file="ver_ruta.jsp"%>
                    </div>
                    <!-- /.col-lg-8 (nested) -->
                    <div class="col-lg-4">
	  					<%@ include file="mapa-ruta.jsp"%>
	  					

              		</div>
	           	<!-- /.col-lg-4 -->
	       	</div>
	        <!-- /.row -->
	   	</div>
	   	</div>
	   	<!-- /#page-wrapper -->
	   	
	   		  					<!-- Scripts necesarios para generar QRs --> 	
					  	<script src="${s}/js/qrcode.min.js"></script>
					  	<script type="text/javascript">
					  		buscaDireccionDiv();
					  	</script>
					  	<!-- Fin scripts QRs -->
					  	
    				<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/0.9.0rc1/jspdf.min.js"></script>
					<script type="text/javascript">

					var doc = new jsPDF();
					var specialElementHandlers = {
					    '#editor': function (element, renderer) {
					        return true;
					    }
					};
					
					$('#cmd').click(function () {   
						var eventos = document.getElementsByClassName("evento");
						for (var i=0; i< eventos.length; i++){
					   // doc.fromHTML($('#content').html(), 15, 15, {
					   //     'width': 170,
					   //         'elementHandlers': specialElementHandlers
					   // }
					    console.log(eventos[i].children[1].children[1].children[1].children[1]);
					   console.log(eventos[i].children[1].children[1].children[1].children[1].attributes["src"].nodeValue);
					   doc.text(20,70, eventos[i].children[1].children[0].children[0].innerText);
					   doc.addImage(eventos[i].children[1].children[1].children[1].children[1].attributes["src"].nodeValue, 'PNG',  100, 200, 280, 210, undefined);
					    }
					    doc.save('sample-file.pdf');
					});
					</script>
	    <%@ include file="../jspf/pie.jspf"%>