<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tags:template titulo="Cadastro de Filme">
	<h1>Cadastro de Filme</h1>
	
	<c:if test="${not empty msg }">
		<div class="alert alert-success">
			${msg}
		</div>
	</c:if>
	
	<form action="cadastrar" method="post">
		<div class="form-group">
			<label for="id-titulo">Título</label>
			<input type="text" name="titulo" class="form-control" id="id-titulo">
		</div>
		<div class="form-group">
			<label for="id-genero">Gênero</label>
			<select name="genero" id="id-genero" class="form-control">
				<option>Ação</option>
				<option>Terror</option>
				<option>Suspense</option>
				<option>Comédia</option>
				<option>Ficção</option>
			</select>
		</div>
		<div class="form-group">
			<label for="id-duracao">Duração (minutos)</label>
			<input type="text" name="duracao" class="form-control" id="id-duracao">
		</div>
		<div>
			<input type="checkbox" name="legendado" id="id-leg">
			<label for="id-leg">Legendado</label>
		</div>
		<input type="submit" value="Cadastrar" class="btn btn-primary">
	</form>
	
</tags:template>




