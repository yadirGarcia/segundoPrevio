<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<title>Candidato</title>
</head>
<body>


	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="#" class="navbar-brand">Gesti�n Candidato</a>
			</div>
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link"> Candidatos </a></li>
			</ul>
		</nav>
	</header>

	<br>

	<div class="container col-md-5">

		<div class="card">

			<div class="card-body">

				<c:if test="${candidato != null}">
					<form action="update" method="post">
				</c:if>

				<c:if test="${candidato == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${candidato != null}">Editar Candidato</c:if>
						<c:if test="${candidato == null}">Agregar Candidato</c:if>
					</h2>
				</caption>

				<c:if test="${candidato != null}">
					<input type="hidden" name="id"
						value="<c:out value='${usuario.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Documento</label> <input type="text"
						value="<c:out value='${candidato.documento}'/>"
						class="form-control" name="documento" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Nombre</label> <input type="text"
						value="<c:out value='${candidato.nombre}'/>" class="form-control"
						name="nombre" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Apellido</label> <input type="text"
						value="<c:out value='${candidato.apellido}'/>"
						class="form-control" name="apellido" required="required">
				</fieldset>


				<fieldset>
					<select class="form-select" name="eleccion">
						<option selected>Seleccione Una</option>
						<c:forEach var="dd" items="${listEleccion}">
							<option value='${dd.id}'>"${dd.nombre}"</option>
						</c:forEach>
					</select>
				</fieldset>

				<fieldset class="form-group">
					<label>Pais de Usuario</label> <input type="text"
						value="<c:out value='${usuario.pais}'/>" class="form-control"
						name="pais">
				</fieldset>

				<button type="submit" class="btn btn-success">Guardar</button>

				</form>

			</div>

		</div>

	</div>

</body>
</html>