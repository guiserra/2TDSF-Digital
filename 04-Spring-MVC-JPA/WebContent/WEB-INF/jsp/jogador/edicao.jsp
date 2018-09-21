<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tags:template titulo="Edição de Jogador">

	<h1>Edição de Jogador</h1>

	<c:url value="/jogador/editar" var="acao" />
	<form:form action="${acao }" method="post" commandName="jogador">
		<form:hidden path="codigo" />
		<div class="form-group">
			<form:label path="nome">Nome</form:label>
			<form:input path="nome" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="dataNascimento">Data Nascimento</form:label>
			<form:input path="dataNascimento" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:checkbox path="ativo" />
			<form:label path="ativo">Ativo</form:label>
		</div>
		<input type="submit" value="Editar" class="btn btn-primary">
	</form:form>

</tags:template>


