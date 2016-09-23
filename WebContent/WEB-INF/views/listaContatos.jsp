 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 
<html>
	<head>
		<meta charset="utf-8">
		<title>Lista de Contatos</title>
	</head>
	<body>
		<c:import url="../../header.jsp"></c:import>
		<table border=2 align=center>
			<tr>
				<td>ID</td>
				<td>Nome</td>
				<td>Email</td>
				<td>Endereço</td>
				<td>Data de Nascimento</td>
			</tr>
			
			<c:forEach items="${contatos}" var="contato">
			<tr>
				<td>${contato.id }</td>
				<td>${contato.nome }</td>
				<c:choose>
					<c:when test="${empty contato.email }">
						<td> Email não informado </td>
					</c:when>
					<c:otherwise>
						<td><a href="mailto:${contato.email }">${contato.email }</a></td>
					</c:otherwise>
				</c:choose>
				<td>${contato.endereco }</td>
				<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/></td>
				<td><a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">REMOVER</a></td>
			</tr>
			</c:forEach>
	
		</table>
		<c:import url="../../footer.jsp"></c:import>
	</body>
</html>