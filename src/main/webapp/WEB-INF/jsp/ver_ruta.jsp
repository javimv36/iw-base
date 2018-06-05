<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
	<div class="panel panel-default">
                        <div class="panel-heading">
                            Datos de la ruta
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <h2>Eventos</h2>
	                            <ul class="timeline">
	                            
	                            <c:forEach items="${ruta.getEventos()}" var="e">
	                            <li class="evento">
							       <div class="timeline-badge info"><i class="fa fa-certificate "></i>
							       </div>
							       <div class="timeline-panel">
							           <div class="timeline-heading">
							               <h4 class="timeline-title"><a href="/evento/${e.id}">${e.direccion}</a></h4>
							               <p>
							                   <small class="text-muted"><i class="fa fa-time"></i> ${e.horaIni} - ${e.horaFin}</small>
							               </p>
							           </div>
							           <div class="timeline-body">
							               <p>${e.info}</p>
							           	<div class="qrcode" href="${e.direccion}"></div>
							           
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
							                       </c:forEach>
							                   </ul>
							                   
							                   <h2>Visitas</h2>
							       <ul class="timeline">
	                            
	                            <c:forEach items="${ruta.getVisitas()}" var="v">
	                            <li class="visita">
							       <div class="timeline-badge info"><i class="fa fa-rocket"></i>
							       </div>
							       <div class="timeline-panel">
							           <div class="timeline-heading">
							               <h4 class="timeline-title"><a href="/visita/${v.id}">${v.direccion}</a></h4>
							               <p>
							                   <small class="text-muted"><i class="fa fa-time"></i> ${v.horaIni} - ${v.horaFin}</small>
							               </p>
							           </div>
							           <div class="timeline-body">
							               <p>${v.detalles}</p>
							               <p>${v.importeEstimado}</p>
							               <p>${v.nombre}</p>
							               <p>${v.telefono}</p>
							           	<div class="qrcode" href="${v.direccion}"></div>
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
	                            </c:forEach>
	                            
                            </ul>
                            </div>
                                    
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->