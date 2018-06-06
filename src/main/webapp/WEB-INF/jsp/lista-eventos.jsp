<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	

<c:forEach items="${eventos}" var="e">
    <a href="/evento/${e.id}">
    <div class="col-lg-4">
   
                    <div class="panel panel-primary"> 
                    
                        <div class="panel-heading">
                           ${e.direccion}
                        </div>
                        <div class="panel-body">
                            <p>${e.info}</p>
                        </div>
                        <div class="panel-footer">
                            ${e.fecha} - ${e.horaIni} - ${e.horaFin}
                        </div>
                       
                    </div>
                </div>
                 </a>
                <!-- /.col-lg-4 -->
                	</c:forEach>
