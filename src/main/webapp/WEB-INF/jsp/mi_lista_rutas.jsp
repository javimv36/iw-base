<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	

	<c:forEach items="${rutas}" var="r">
    <a href="/ruta/${r.id}">
    <div class="col-lg-4">
   
                    <div class="panel panel-primary"> 
                    
                        <div class="panel-heading">
                           ${r.id}
                        </div>
                        <div class="panel-body">
                            <p>${r.fecha}</p>
                        </div>
                        <div class="panel-footer">
                            ${r.creador.login}
                        </div>
                       
                    </div>
                </div>
                 </a>
                <!-- /.col-lg-4 -->
                	</c:forEach>