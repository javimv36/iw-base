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
                                <div class="col-lg-6">
                                    <label>Fecha</label>
                                    <p>${ruta.getFecha()}</p>
                                     <div class="qrcode"></div>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6">
		                      	<table>
								<thead>
								<tr><th>id<th>dirección<th>fecha</tr>
								</thead>
								<tbody>
								<c:forEach items="${ruta.getEventos()}" var="e">
									<tr>
									<td>${e.id}<td><a href="/evento/${e.id}">${e.direccion}</a><td>${e.fecha}
									</tr>	
								</c:forEach>
								</tbody>
								</table>
								
								<table>
								<thead>
								<tr><th>id<th>dirección<th>fecha</tr>
								</thead>
								<tbody>
								<c:forEach items="${ruta.getVisitas()}" var="v">
									<tr>
									<td>${v.id}<td><a href="/visita/${v.id}">${v.direccion}</a><td>${v.fecha}
									</tr>	
								</c:forEach>
								</tbody>
								</table>
                                    
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->