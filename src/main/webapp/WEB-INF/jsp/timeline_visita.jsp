<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
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
           	<div class="qrcode" href="coordenadas"></div>
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