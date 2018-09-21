<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tags:template titulo="Cadastro de Jogador">

	<h1>Cadastro de Jogador</h1>

	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>

	<form action="cadastrar" method="post">
		<div class="form-group">
			<label for="id-nome">Nome</label> <input type="text" name="nome"
				id="id-nome" class="form-control">
		</div>
		<div class="form-group">
			<input type="checkbox" value="true" name="ativo" id="id-ativo">
			<label for="id-ativo">Ativo</label>
		</div>
		<div class="form-group">
			<label for="id-data">Data Nascimento</label> <input type="text"
				name="dataNascimento" class="form-control" id="id-data">
		</div>
		<input type="submit" value="Cadastrar" class="btn btn-primary">
	</form>

</tags:template>