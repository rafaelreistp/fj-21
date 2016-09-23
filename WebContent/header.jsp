<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header 
style=" margin-bottom: 5px; padding: 2px;text-align: center;">
	<img alt="Caelum" src="<c:url value="/imagens/caelum.png"/>">
	<ul style="list-style-type: none;">
		<li><a href="/fj21-agenda">Início</a></li>
		<li><a href="insereContato.jsp">Inserir Contato</a></li>
		<li><a href="mvc?logica=ListaContatosLogic">Listar Contatos</a></li>
	</ul>
	<hr/>
</header>