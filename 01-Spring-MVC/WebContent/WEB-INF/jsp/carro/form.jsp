<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Carro</title>
</head>
<body>

	<h1>Cadastro de Carro</h1>
	${carro.placa }
	${carro.ano }
	${carro.novo }
	${carro.cor }
	<form action="cadastrar" method="post">
		<div>
			<label for="id-placa">Placa</label>
			<input type="text" name="placa" id="id-placa">
		</div>
		<div>
			<label for="id-ano">Ano</label>
			<input type="text" name="ano" id="id-ano">
		</div>
		<div>
			<input type="checkbox" name="novo" id="id-novo">
			<label for="id-novo">Novo</label>
		</div>
		<div>
			<label for="id-cor">Cor</label>
			<select name="cor" id="id-cor"> 
				<option>Branco</option>
				<option>Prata</option>
				<option>Preto</option>
			</select>
		</div>
		<input type="submit" value="OK">
	</form>

</body>
</html>