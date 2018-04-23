<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-clock-o fa-fw"></i> Próxima ruta
                            <div class="btn-group pull-right">
                                <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-chevron-down"></i>
                                </button>
                                <ul class="dropdown-menu slidedown">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-book fa-fw"></i> Generar PDF
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-download fa-fw"></i> Descargar PDF
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-pencil fa-fw"></i> Editar
                                        </a>
                                    </li>
                                 </ul>
                            </div>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <ul class="timeline">
                                <%@ include file="timeline_visita.jsp"%>
                                <li  class="timeline-inverted">
                                    <div class="timeline-badge info"><i class="fa fa-home"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Calle Desengaño 21, Madrid</h4>
                                            <p>
                                                <small class="text-muted"><i class="fa fa-time"></i> 10:00 - 10:30</small>
                                            </p>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Visitar al CEO de IBM.</p>
                                            <p>Aclarar acuerdo. Proveedor de servicios de cloud coputing con Watson</p>
                                        	<div class="qrcode"></div>
                                        	<hr>
                                        	<div class="form-group input-group">
	                                            <span class="input-group-addon"><i class="fa fa-file-o"></i>
	                                            </span>
	                                            <input type="text" class="form-control" placeholder="Nota sobre la visita">
                                        	</div>
                                        	<div class="form-group input-group">
	                                            <span class="input-group-addon"><i class="fa fa-eur"></i>
	                                            </span>
	                                            <input type="number" class="form-control" placeholder="Importe">
                                        	</div>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown">
                                                    <i class="fa fa-check"></i> 
                                                    Terminar
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#">Terminado</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li><a href="#">No disponible</a>
                                                    </li>
                                                    <li><a href="#">Aplazar</a>
                                                    </li>
                                                </ul>
                                            </div>
                                          
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="timeline-badge warning"><i class="fa fa-map-marker"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Calle de los Ainur 32, Madrid</h4>
                                            <p>
                                                <small class="text-muted"><i class="fa fa-time"></i> 11:00 - 11:30</small>
                                            </p>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Almuerzo con el CTO de Telefónica</p>
                                            <p>No puede ser "Maligno".</p>
                                        	<div class="qrcode"></div>
                                        	<hr>
                                        	<div class="form-group input-group">
	                                            <span class="input-group-addon"><i class="fa fa-file-o"></i>
	                                            </span>
	                                            <input type="text" class="form-control" placeholder="Nota sobre la visita">
                                        	</div>
                                        	<div class="form-group input-group">
	                                            <span class="input-group-addon"><i class="fa fa-eur"></i>
	                                            </span>
	                                            <input type="number" class="form-control" placeholder="Importe">
                                        	</div>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown">
                                                    <i class="fa fa-check"></i> 
                                                    Terminar
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#">Terminado</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li><a href="#">No disponible</a>
                                                    </li>
                                                    <li><a href="#">Aplazar</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="timeline-badge danger"><i class="fa fa-road"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Calle de Mordor 666, Madrid</h4>
                                            <p>
                                                <small class="text-muted"><i class="fa fa-time"></i> 10:00 - 10:30</small>
                                            </p>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel justo eu mi scelerisque vulputate. Aliquam in metus eu lectus aliquet egestas.</p>
 											<div class="qrcode"></div> 
 											<hr>
                                        	<div class="form-group input-group">
	                                            <span class="input-group-addon"><i class="fa fa-file-o"></i>
	                                            </span>
	                                            <input type="text" class="form-control" placeholder="Nota sobre la visita">
                                        	</div>
                                        	<div class="form-group input-group">
	                                            <span class="input-group-addon"><i class="fa fa-eur"></i>
	                                            </span>
	                                            <input type="number" class="form-control" placeholder="Importe">
                                        	</div>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown">
                                                    <i class="fa fa-check"></i> 
                                                    Terminar
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#">Terminado</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li><a href="#">No disponible</a>
                                                    </li>
                                                    <li><a href="#">Aplazar</a>
                                                    </li>
                                                </ul>
                                            </div>                                      
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="timeline-badge info"><i class="fa fa-book"></i>
                                    </div>
                                    <div class="timeline-panel">
                                   
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Calle de Tolkien 90, Madrid</h4>
                                            <p>
                                                <small class="text-muted"><i class="fa fa-time"></i> 12:00 - 12:30</small>
                                            </p>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel justo eu mi scelerisque vulputate. Aliquam in metus eu lectus aliquet egestas.</p>
                                        	<div class="qrcode"></div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="timeline-badge warning"><i class="fa fa-camera"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Timeline Event</h4>
                                            <p>
                                                <small class="text-muted"><i class="fa fa-time"></i> 13:00 - 13:30</small>
                                            </p>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel justo eu mi scelerisque vulputate. Aliquam in metus eu lectus aliquet egestas.</p>
                                            <div class="qrcode"></div>
                                            <hr>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown">
                                                    <i class="fa fa-cog"></i> 
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#">Action</a>
                                                    </li>
                                                    <li><a href="#">Another action</a>
                                                    </li>
                                                    <li><a href="#">Something else here</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li><a href="#">Separated link</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                <div class="timeline-badge"><i class="fa fa-check"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Timeline Event</h4>
                                            <p>
                                                <small class="text-muted"><i class="fa fa-time"></i> 14:00 - 14:30</small>
                                            </p>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vel justo eu mi scelerisque vulputate. Aliquam in metus eu lectus aliquet egestas.</p>
                                        	<div class="qrcode"></div>
                                        </div>
                                    </div>
                                </li>
                                <li class="timeline-inverted">
                                    <div class="timeline-badge success"><i class="fa fa-thumbs-up"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Posada del Pony Pisador, Bree</h4>
                                            <p>
                                                <small class="text-muted"><i class="fa fa-time"></i> 15:00 - 15:30</small>
                                            </p>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Cena y descanso para el día siguiente.</p>
                                            <p>Imprimir informe resumen del día.</p>
                                        	<div class="qrcode"></div>
                                        	<hr>
                                        	<div class="form-group input-group">
	                                            <span class="input-group-addon"><i class="fa fa-file-o"></i>
	                                            </span>
	                                            <input type="text" class="form-control" placeholder="Nota sobre la visita">
                                        	</div>
                                        	<div class="form-group input-group">
	                                            <span class="input-group-addon"><i class="fa fa-eur"></i>
	                                            </span>
	                                            <input type="number" class="form-control" placeholder="Importe">
                                        	</div>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown">
                                                    <i class="fa fa-check"></i> 
                                                    Generar informe
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#">Generar y descargar</a>
                                                    </li>
                                                    <li><a href="#">Solo generar</a>
                                                    </li>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                    
      <!-- Scripts necesarios para generar QRs --> 	
	  <script src="${s}/js/qrcode.min.js"></script>
	  <script type="text/javascript">
	  var qrs = document.getElementsByClassName("qrcode");
	  for (i = 0; i < qrs.length; i++) { 
		  	console.log(qrs[i]);
	   		new QRCode(qrs[i], {
		    text: qrs[i].getAttribute("href"),
		    width: 128,
		    height: 128,
		    colorDark : "#000000",
		    colorLight : "#ffffff",
		    correctLevel : QRCode.CorrectLevel.H
		});
	  }
	  </script>
	  <!-- Fin scripts QRs -->
	  
	  <!-- Estilo para la imagen QR, quitar de aquí lo antes posible -->
	  <style>
	  .qrcode *{
	  
	  }
	  </style>	  
	  <!-- Fin estilo QRs -->