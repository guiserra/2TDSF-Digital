<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>    

<tags:template titulo="Cadastro de Aluno">

	<jsp:attribute name="scripts">
		Qualquer script js para ficar abaixo do Jquery/boostrap
	</jsp:attribute>
	<jsp:body>
		<h1>Cadastro de Aluno</h1>
		<c:if test="${not empty a}">
			${msg }
			${a.nome }
			${a.aprovado?"Aprovado":"Tente novamente" }
			${a.sexo }
			${a.unidade }
		</c:if>
	
		<form method="post" action="cadastrar">
			<div class="form-group">
				<label for="id-nome">Nome</label>
				<input class="form-control" type="text" name="nome" id="id-nome">
			</div>
			<div class="form-group">
				<input type="checkbox" id="id-aprovado" name="aprovado">
				<label for="id-aprovado">Aprovado</label>
			</div>
			<div class="form-group">
				<input type="radio" name="sexo" id="id-fem" value="Feminino">
				<label for="id-fem">Feminino</label>
				<input type="radio" name="sexo" id="id-masc" value="Masculino">
				<label for="id-masc">Masculino</label>
			</div>
			<div class="form-group">
				<label for="id-unidade">Unidade</label>
				<select name="unidade" id="id-unidade" class="form-control">
					<option>Paulista</option> 
					<option>Vila Olimpia</option>
					<option>Aclimação</option>
					<option>Alphavile</option>
				</select>
			</div>
			
			<input type="submit" value="Cadastrar" class="btn btn-primary">
		</form>
	</jsp:body>
</tags:template>
