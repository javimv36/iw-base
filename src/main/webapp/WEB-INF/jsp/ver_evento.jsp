<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
	<div class="panel panel-default">
                        <div class="panel-heading">
                            Datos del evento
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                	<label>Dirección</label>
                                    <p id="direccion">${evento.getDireccion()}</p>
                                    <label>Fecha</label>
                                    <p>${evento.getFecha()}</p>
                                    <label>Hora</label>
                                     <p>${evento.getHoraIni()}</p>
                                     <div class="qrcode" href="${evento.getInfo()}"></div>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6">
                                    <h1>Información evento</h1>
                                  	<p>${evento.getPrecio()}€</p>
                                    
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->