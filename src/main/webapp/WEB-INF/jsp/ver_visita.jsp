<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
	<div class="panel panel-default">
                        <div class="panel-heading">
                            Datos de la visita
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                	<label>Dirección</label>
                                    <p id="direccion">${visita.getDireccion()}</p>
                                    <label>Fecha</label>
                                    <p>${visita.getFecha()}</p>
                                    <label>Hora</label>
                                     <p>${visita.getHoraIni()}</p>
                                     <div class="qrcode" href="${visita.getDetalles()}"></div>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6">
                                    <h1>Información visita</h1>
                                    <p>${visita.getNombre()}</p> 
                                  	<p>${visita.getTelefono()}</p>
                                  	<p>${visita.getImporteEstimado()}€</p>
                                    <label>Detalles</label>
                                    <p>${visita.getDetalles()}</p>
                                    
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->