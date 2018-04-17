<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
	<div class="panel panel-default">
                        <div class="panel-heading">
                            Rellena el formulario con los datos del evento
                        </div>
                        <div class="panel-body">
                            <div class="row">
                            	<form action="/addEvento" method="post" role="form">
                                	<div class="col-lg-6">
                                        <div class="form-group has-warning">
                                            <label>Dirección</label>
                                            <input type="text" name="direccion" id="direccion" class="form-control" required>
                                            <p class="help-block">Comprueba que la diracción sea correcta.</p>
											<input type="button" onclick="buscaDireccion()" class="btn" value="Comprobar" />                                                 
                                        </div>
                                        <div class="form-group has-warning">
                                            <label>Fecha</label>
                                            <input type="date" name="fecha" class="form-control" required>
                                            <p class="help-block">Selecciona el día</p>
                                        </div>
                                        <div class="form-group has-warning">
                                            <label>Hora de inicio</label>
                                            <input type="time" name="horaIni" class="form-control" required>
                                            <p class="help-block">Selecciona una hora</p>
                                        </div>
                                        <div class="form-group has-warning">
                                            <label>Hora de finalización</label>
                                            <input type="time" name="horaFin" class="form-control" required>
                                            <p class="help-block">Selecciona una hora</p>
                                        </div>
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                        
                                        <button type="submit" class="btn btn-default">Guardar</button>
                                        <button type="reset" class="btn btn-default">Reset</button>
                                   
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6">
                                    <h1>Precio del evento</h1>
                                        <div class="form-group input-group has-warning">
                                            <span class="input-group-addon">€</span>
                                            <input type="text" name="precio" class="form-control" placeholder="Precio" required>
                                        </div>
                                         <div class="form-group has-warning">
                                            <label>Información</label>
                                             <textarea class="form-control" id="info" name="info" rows="6" required></textarea>
                                        </div>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                 </form>
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->