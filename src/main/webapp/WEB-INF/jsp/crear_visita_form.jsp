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
                                    <form action="/addVisita" method="post" role="form">
                                        <div class="form-group has-warning">
                                            <label>Dirección</label>
                                            <input class="form-control">
                                            <p class="help-block">Comprueba que la diracción sea correcta.</p>
                                        </div>
                                        <div class="form-group has-warning">
                                            <label>Fecha</label>
                                            <input type="date" class="form-control">
                                            <p class="help-block">Selecciona el día</p>
                                        </div>
                                        <div class="form-group">
                                            <label>Tipo</label>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>Visita
                                                </label>
                                            </div>
                                             <div class="radio">
                                                <label>
                                                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option3">Evento
                                                </label>
                                            </div>
                                             <div class="radio">
                                                <label>
                                                    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">Trabajo
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="optionsRadios" id="optionsRadios4" value="option2">Libre
                                                </label>
                                            </div>
                                           
                                        </div>
					            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                        
                                        <button type="submit" class="btn btn-default">Guardar</button>
                                        <button type="reset" class="btn btn-default">Reset</button>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6">
                                    <h1>Información visita</h1>
                                    <form role="form">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">@</span>
                                            <input type="text" class="form-control" placeholder="Nombre">
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-phone"></i>
                                            </span>
                                            <input type="tel" class="form-control" placeholder="Teléfono">
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-eur"></i>
                                            </span>
                                            <input type="text" class="form-control" placeholder="Importe estimado">
                                        </div>
                                        <div class="form-group">
                                            <label>Detalles</label>
                                            <textarea class="form-control" rows="6"></textarea>
                                        </div>
                                    </form>    
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->