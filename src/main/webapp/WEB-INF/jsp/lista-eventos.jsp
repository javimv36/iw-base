<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<div class="panel panel-default">
<h1>Lista de eventos disponibles</h1>
<table>
	<thead>
	<tr><th>id<th>dirección<th>fecha</tr>
	</thead>
	<tbody>
	<c:forEach items="${eventos}" var="e">
		<tr>
		<td>${e.id}<td><a href="/evento/${e.id}">${e.direccion}</a><td>${e.fecha}
		</tr>	
	</c:forEach>
	</tbody>
	</table>
</div>