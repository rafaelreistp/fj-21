<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insere Contato</title>
		<script src="js/jquery.js"></script>
		<script src="js/jquery-ui.js"></script>
		<link type="text/css" rel="stylesheet" href="css/jquery.css">
	</head>
	<body>
	
		<c:import url="header.jsp"></c:import>
		
		<h1>Inserção de contatos </h1>
		<form action="mvc" method="post">
			<input type=text hidden="true" name="logica" value="InsereContatoLogic">
			Nome: <input type="text" name="nome"/> <br/>
			Email: <input type="email" name="email"/> <br/>
			Endereço: <input type="text" name="endereco"/> <br/>
			Data de Nascimento(dd/MM/yyyy): <caelum:campoData id="dataNascimento"/>	
			<input type="submit" value="Inserir"/>
		</form>
		
		<c:import url="footer.jsp"></c:import>
		

	</body>
</html>