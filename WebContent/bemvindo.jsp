<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="utf-8">
		<title>Bem Vindo!!</title>
	</head>
	<body>
		<c:import url="header.jsp"></c:import>
		<%= "Bem vindo ao sistema de agenda FJ21!" %>
		<br>
		<%= "Desenvolvido por Rafael Reis" %> 
		<% System.out.println("Tudo foi executado!"); %>
		<c:import url="footer.jsp"></c:import>
	</body>
</html>