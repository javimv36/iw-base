<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<h3>Crear usuarios</h3>
	<p class="lead">Información muy confidencial</p>

	<hr/>

	<form action="/admin/addUser" method="post">
		<label for="login">login<input name="login"/></label>
		<label for="password">password<input type="password" name="password"/></label>
		<label for="isAdmin">es administrador?<input type="checkbox" name="isAdmin"></label>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            
            <div class="form-actions">
                <button type="submit" class="btn">Crear usuario</button>
            </div>
	</form>
	