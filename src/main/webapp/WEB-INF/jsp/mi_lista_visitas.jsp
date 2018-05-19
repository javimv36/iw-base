<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
	<c:forEach items="${visitas}" var="v">
    <a href="/visita/${v.id}">
    <div class="col-lg-4">
   
                    <div class="panel panel-primary"> 
                    
                        <div class="panel-heading">
                           ${v.direccion}
                        </div>
                        <div class="panel-body">
                            <p>${v.detalles}</p>
                        </div>
                        <div class="panel-footer">
                            ${v.fecha} - ${v.horaIni} - ${v.horaFin}
                        </div>
                       
                    </div>
                </div>
                 </a>
                <!-- /.col-lg-4 -->
                	</c:forEach>