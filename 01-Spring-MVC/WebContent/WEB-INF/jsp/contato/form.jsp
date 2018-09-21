<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contato</title>
</head>
<body>

	<h1>Contato</h1>
	${msg}
	${nome}
	<form action="enviar" method="post">
		<div>
			<label for="id-nome">Nome</label>
			<input type="text" name="nome" id="id-nome">
		</div>
		<div>
			<label for="id-tel">Telefone</label>
			<input type="text" name="telefone" id="id-tel">
		</div>
		<div>
			<label for="id-email">E-mail</label>
			<input type="text" name="email" id="id-email">
		</div>
		<input type="submit" value="OK">
	</form>

</body>
</html>
