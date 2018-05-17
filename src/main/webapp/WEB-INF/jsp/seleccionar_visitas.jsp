<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<div class="panel panel-default">
<div class="form-group">
<h1>Visitas</h1>
<c:forEach items="${visitas}" var="v">
<div class="checkbox">
<label>
<input type="checkbox" name="visitas" value="${v.id}"> ${v.id} - ${v.direccion} - ${v.fecha}<a href="/visita/${v.id}">ver</a> <br>
</label>
</div>
</c:forEach>
</div>
</div>