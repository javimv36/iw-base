<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
	<div class="panel panel-default">
                        <div class="panel-heading">
                            Selecciona las visitas y eventos que harás en esta ruta
                        </div>
                        <div class="panel-body">
                            <div class="row">
                            	<form action="/addRuta" method="post" role="form">
                                	<div class="col-lg-6">
                                		<div class="form-group has-warning">
                                            <label>Fecha</label>
                                            <input type="date" name="fecha" class="form-control" required>
                                            <p class="help-block">Selecciona el día</p>
                                        </div>
                                       	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                    </div>
                                <!-- /.col-lg-6 (nested) -->
                                <div class="col-lg-6">
                                    <h1>Eventos</h1>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                                 </form>
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->