<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<div class="panel panel-default">
<h1>Lista de rutas de ${user.login}</h1>
<table>
	<thead>
	<tr><th>id<th>fecha</tr>
	</thead>
	<tbody>
	<c:forEach items="${rutas}" var="r">
		<tr>
		<td>${r.id}<td><a href="/ruta/${r.id}">${r.fecha}</a>
		</tr>	
	</c:forEach>
	</tbody>
	</table>
</div>