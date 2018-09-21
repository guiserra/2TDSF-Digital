<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<tags:template titulo="Cadastro de Partida">

	<h1>Cadastro de Partida</h1>

	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>

	<c:url value="/partida/cadastrar" var="acao" />
	<form:form action="${acao}" method="post" commandName="partida">
		<div class="form-group">
			<form:label path="data">Data</form:label>
			<form:input path="data" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="timeA">Time Casa</form:label>
			<form:input path="timeA" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="timeB">Time Visitante</form:label>
			<form:input path="timeB" cssClass="form-control" />
		</div>
		<input type="submit" value="Cadastrar" class="btn btn-primary" />
	</form:form>


</tags:template>
