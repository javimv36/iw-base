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
                    <h1 class="page-header">Ruta ${ruta.getId()} : día ${ruta.getFecha()}</h1>
                
                </div>
                <!-- /.col-lg-12 -->
                  <button type="button" class="btn btn-success" onclick="generaPDF();">Generar PDF</button>
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
					  	<!-- Fin scripts QRs -->
					  	
					  	<script src="${s}/js/pdftex.js"></script>
					  	<script src="${s}/js/pdftex-worker.js"></script>
					  	<script src="${s}/js/promise.min.js"></script>
					  	<script type="text/javascript">
					  	var pdf = undefined;
					  	function generaPDF(){
					  		console.log("Creando pdf");
					  	var pdftex = new PDFTeX();
					  	var latex_code = "" +
					  	  "\documentclass[12pt]{article}" +
					  	  "\title{\TeX live.js}" +
					  	  "\begin{document}" +
					  	  "\maketitle" +
					  	  "\LaTeX is great!" +
					  	  "\end{document}";
						console.log("A compilar!!!");
					  	pdftex.compile(latex_code).then(function(pdf) { window.open(pdf) }); 
					  	}
					  	</script>
              		</div>
	           	<!-- /.col-lg-4 -->
	       	</div>
	        <!-- /.row -->
	   	</div>
	   	<!-- /#page-wrapper -->
	    <%@ include file="../jspf/pie.jspf"%>