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
                            	<form action="/addVisita" method="post" role="form">
                                	<div class="col-lg-6">
                                        <div class="form-group has-warning">
                                            <label>Dirección</label>
                                            <input type="text" name="direccion" class="form-control">
                                            <p class="help-block">Comprueba que la diracción sea correcta.</p>
                                        </div>
                                        <div class="form-group has-warning">
                                            <label>Fecha</label>
                                            <input type="date" name="fecha" class="form-control">
                                            <p class="help-block">Selecciona el día</p>
                                        </div>
                                        <div class="form-group">
                                            <label>Tipo</label>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="tipo" id="optionsRadios1" value="option1" checked>Visita
                                                </label>
                                            </div>
                                             <div class="radio">
                                                <label>
                                                    <input type="radio" name="tipo" id="optionsRadios2" value="option3">Evento
                                                </label>
                                            </div>
                                             <div class="radio">
                                                <label>
                                                    <input type="radio" name="tipo" id="optionsRadios3" value="option3">Trabajo
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="tipo" id="optionsRadios4" value="option2">Libre
                                                </label>
                                            </div>
                                           
                                        </div>
					            		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                        
                                        <button type="submit" class="btn btn-default">Guardar</button>
                                        <button type="reset" class="btn btn-default">Reset</button>
                                   
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6">
                                    <h1>Información visita</h1>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">@</span>
                                            <input type="text" name="nombre" class="form-control" placeholder="Nombre">
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-phone"></i>
                                            </span>
                                            <input type="tel" name="tel" class="form-control" placeholder="Teléfono">
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-eur"></i>
                                            </span>
                                            <input type="text" name="importeEstimado" class="form-control" placeholder="Importe estimado">
                                        </div>
                                        <div class="form-group">
                                            <label>Detalles</label>
                                            <textarea class="form-control" name="detalles" rows="6"></textarea>
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