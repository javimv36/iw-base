<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
	<h3>Usuarios</h3>
	<table>
	<thead>
	<tr><th>id<th>login<th>roles</tr>
	</thead>
	<tbody>
	<c:forEach items="${users}" var="u">
		<tr>
		<td>${u.id}<td>${u.login}<td>${u.roles}
		</tr>	
	</c:forEach>
	</tbody>
	</table>
	
	<hr/>
	<h3>Visitas</h3>
	<table>
	<thead>
	<tr><th>id<th>direccion<th>fecha</tr>
	</thead>
	<tbody>
	<c:forEach items="${visitas}" var="v">
		<tr>
		<td>${v.id}<td>${v.direccion}<td>${v.fecha}
		</tr>	
	</c:forEach>
	</tbody>
	</table>
<hr/>
<h3>Eventos</h3>
	<table>
	<thead>
	<tr><th>id<th>direccion<th>precio</tr>
	</thead>
	<tbody>
	<c:forEach items="${eventos}" var="e">
		<tr>
		<td>${e.id}<td>${e.direccion}<td>${e.precio}
		</tr>	
	</c:forEach>
	</tbody>
	</table>
<hr/>
	<%@ include file="../jspf/authinfo.jspf"%>		