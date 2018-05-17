<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<div class="panel panel-default">
<div class="form-group">
<h1>Eventos</h1>
<c:forEach items="${eventos}" var="e">
<div class="checkbox">
<label>
<input type="checkbox" name="eventos" value="${e.id}"> ${e.id} - ${e.direccion} - ${e.fecha}<a href="/evento/${e.id}">ver</a> 
</label>
</div>
</c:forEach>
</div>
</div>