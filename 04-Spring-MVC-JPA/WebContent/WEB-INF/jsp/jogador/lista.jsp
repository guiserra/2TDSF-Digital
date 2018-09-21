<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<tags:template titulo="Lista de Jogadores">

	<h1>Lista de Jogadores</h1>

	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>

	<table class="table table-striped table-dark">
		<thead class="thead-dark">
			<tr>
				<th>Código</th>
				<th>Nome</th>
				<th>Ativo</th>
				<th>Data Nascimento</th>
				<th></th>
			</tr>
		</thead>
		<c:forEach var="j" items="${jogadores }">
			<tr>
				<td>${j.codigo }</td>
				<td>${j.nome }</td>
				<td>${j.ativo?"Sim":"Não" }</td>
				<td><fmt:formatDate value="${j.dataNascimento.time }"
						pattern="dd/MM/yyyy" /></td>
				<td><button ${j.ativo?"disabled":""} type="button" class="btn btn-outline-info"
						data-toggle="modal" data-target="#exemploAtivar"
						onclick="codigoJogador2.value = ${j.codigo}">Ativar</button> <a
					href="<c:url value="/jogador/editar/${j.codigo }"/>">
						<button type="button" class="btn btn-outline-primary">Editar</button>
				</a> <!-- Button trigger modal -->
					<button type="button" class="btn btn-outline-danger"
						data-toggle="modal" data-target="#exampleModal"
						onclick="codigoJogador.value = ${j.codigo}">Excluir</button></td>
			</tr>
		</c:forEach>
	</table>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Excluir</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">Tem certeza que dejesa excluir? Isso
					não tem volta!</div>
				<div class="modal-footer">
					<form action="<c:url value="/jogador/excluir"/>" method="post">
						<input type="hidden" name="codigo" id="codigoJogador" />
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Fechar</button>
						<button type="submit" class="btn btn-primary">Confirmar</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exemploAtivar" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ativar</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">Tem certeza que dejesa ativar o
					jogador?</div>
				<div class="modal-footer">
					<form action="<c:url value="/jogador/ativar"/>" method="post">
						<input type="hidden" name="codigo" id="codigoJogador2" />
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Fechar</button>
						<button type="submit" class="btn btn-success">Confirmar</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</tags:template>





